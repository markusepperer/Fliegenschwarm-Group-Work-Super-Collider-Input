"""Read-only verification. Does not open Max or write into either project."""
from pathlib import Path
import hashlib, json, re, unicodedata

HERE = Path(__file__).resolve().parent
manifest = json.loads((HERE / 'isolation_manifest.json').read_text())
root, source = Path(manifest['root']), Path(manifest['source'])
prefix = manifest['prefix']
checks = []

def digest(p):
    h = hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda: f.read(1048576), b''): h.update(block)
    return h.hexdigest()

original = {str(p.relative_to(source)): digest(p) for p in source.rglob('*') if p.is_file() and p.name != '.DS_Store'}
baseline = {name:value for name,value in manifest['original_sha256'].items() if Path(name).name != '.DS_Store'}
assert original == baseline, 'Original project content differs from isolation baseline'
checks.append(f'All {len(baseline)} original project files unchanged (SHA-256); Finder .DS_Store metadata excluded')
assert not root.resolve().is_relative_to(source.parents[1])
assert not any(p.is_symlink() for p in root.rglob('*')), 'Symbolic link found'
for old, new in manifest['file_mapping'].items():
    if Path(old).name == '.DS_Store': continue
    p = root / new
    assert p.is_file(), p
    assert p.stat().st_nlink == 1 and p.stat().st_ino != (source / old).stat().st_ino
checks.append('Independent files; no symbolic links or hard links to original')
oldnames = {unicodedata.normalize('NFC', p.name) for p in source.rglob('*') if p.is_file() and p.name != '.DS_Store'}
assert not oldnames.intersection(unicodedata.normalize('NFC', p.name) for p in root.rglob('*') if p.is_file() and p.name != '.DS_Store')
checks.append('No project filenames shared with original, including data and media (Finder .DS_Store excluded)')
for version in ['Max 8', 'Max 9']:
    settings = Path.home() / "Library/Application Support/Cycling '74" / version / 'Settings/maxsearchpaths.txt'
    for raw in re.findall(r'"Macintosh HD:([^\"]+)"', settings.read_text()):
        assert not root.resolve().is_relative_to(Path(raw).resolve()), raw
checks.append('Outside saved Max 8/9 user search paths')

bus_types = {'s','r','send','receive','send~','receive~','forward','value','v','coll','table','dict','buffer~','pattrstorage','pv'}
edges, buses, objects = [], [], set()
original_stems = {unicodedata.normalize('NFC', p.stem) for p in (source / 'patchers').glob('*.maxpat')}
def walk(p, file):
    ids = [q['box']['id'] for q in p.get('boxes', [])]
    assert len(ids) == len(set(ids)), (file, 'duplicate IDs')
    for line in p.get('lines', []):
        assert line['patchline']['source'][0] in ids and line['patchline']['destination'][0] in ids, file
    assert not p.get('dependency_cache'), file
    for q in p.get('boxes', []):
        b = q['box']; text = b.get('text', ''); tokens = text.split()
        if b['maxclass'] == 'newobj' and tokens:
            op = tokens[0]; objects.add(op)
            assert unicodedata.normalize('NFC', op) not in original_stems, (file, text)
            if op.startswith(prefix):
                assert (root / 'patchers' / (op + '.maxpat')).is_file(), text
                edges.append([str(file), op + '.maxpat'])
            if op in ('poly~','pfft~'):
                assert tokens[1].startswith(prefix) and (root / 'patchers' / (tokens[1]+'.maxpat')).is_file(), text
                edges.append([str(file), tokens[1]+'.maxpat'])
            if op in ('js','jsui'):
                assert tokens[1].startswith(prefix) and (root / 'code' / tokens[1]).is_file(), text
                edges.append([str(file), tokens[1]])
            if op in bus_types:
                assert len(tokens) > 1 and (tokens[1].startswith(prefix) or re.match(r'^#[0-9]'+re.escape(prefix), tokens[1])), text
                assert '#' not in tokens[1][2:] if tokens[1].startswith('#') else '#' not in tokens[1], text
                buses.append(tokens[1])
            if op == 'pattrstorage':
                assert '@autorestore 0' in text and '@savemode 0' in text, text
            assert op not in ('savedialog','opendialog'), text
        if b['maxclass'] == 'bpatcher':
            assert b['name'].startswith(prefix) and (root / 'patchers' / b['name']).is_file(), b
            edges.append([str(file), b['name']])
        if b['maxclass'] == 'jsui':
            assert b['filename'].startswith(prefix) and (root / 'code' / b['filename']).is_file(), b
            assert b['jsarguments'][0] == b['filename']
            edges.append([str(file), b['filename']])
        if b['maxclass'] == 'message':
            if text.startswith(('read ', 'write ', 'writeagain', 'open ')) and text != 'open $1':
                paths = re.findall(r'"([^\"]+)"', text)
                assert len(paths) == 1 and Path(paths[0]).is_relative_to(root), (file, text)
                if text.startswith('read '): assert Path(paths[0]).is_file(), text
        if 'patcher' in b: walk(b['patcher'], file)
for f in (root / 'patchers').glob('*.maxpat'):
    walk(json.loads(f.read_text())['patcher'], f.name)
    assert str(source) not in f.read_text() and '/GithubRepos/' not in f.read_text(), f
checks.append(f'{len(edges)} local patcher/code references resolve; nested patch cables intact')
checks.append(f'{len(buses)} named Max objects isolated; #0/#1 at start for Max substitution; file controls local')
project_file = next(root.glob('*.maxproj'))
project = json.loads(project_file.read_text())
assert project_file.stem == root.name == project['name'], 'Max project file/folder name mismatch'
for folder, entries in project['contents'].items():
    for filename in entries:
        assert (root / folder / filename).is_file(), (folder, filename)
assert not project['searchpath'] and project['autolocalize'] == 0
checks.append('Project contains only local components; autolocalize disabled')
for bank, count in [('fruchtfliege',700),('moskito',42),('hummel',48)]:
    for i in range(1, count+1):
        name = f'{bank}_flug_{i:03}.json'
        assert digest(root / 'data' / (prefix+name)) == digest(source / 'data' / name)
checks.append('All 790 flight data files byte-for-byte preserved')
for f in (root / 'code').glob('*.js'):
    code = f.read_text()
    for name in re.findall(r'new Global\("([^\"]+)"', code): assert name.startswith(prefix), (f,name)
    assert str(source) not in code and '/GithubRepos/' not in code
checks.append('All JavaScript global state names isolated; no original paths')
result = {'status':'PASS','checks':checks,'reference_count':len(edges),'bus_count':len(buses),'runtime_max_test':False}
print(json.dumps(result, ensure_ascii=False, indent=2))
