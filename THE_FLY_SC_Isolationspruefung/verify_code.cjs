const fs = require('fs');
const path = require('path');
const vm = require('vm');
const assert = require('assert');
const manifest = JSON.parse(fs.readFileSync(path.join(__dirname, 'isolation_manifest.json')));
const root = path.resolve(__dirname, '..'), prefix = manifest.prefix;
const codeDir = path.join(root, 'code');
const files = fs.readdirSync(codeDir).filter(n => n.endsWith('.js'));
for (const file of files) new vm.Script(fs.readFileSync(path.join(codeDir, file), 'utf8'), {filename:file});
let opened = [], globals = [], sent = [];
function context(file, namespace) {
  function Task() { this.cancel = this.schedule = this.repeat = function() {}; }
  function File(filename, mode) {
    const resolved = path.resolve(path.isAbsolute(filename)?filename:path.join(codeDir,filename));
    assert(resolved.startsWith(root + path.sep), 'File access outside working copy: ' + filename);
    opened.push([resolved, mode]);
    this.isopen = true; this.position = 0; this.foldername = path.dirname(resolved);
    this.data = mode === 'read' ? fs.readFileSync(resolved, 'utf8') : '';
    this.eof = this.data.length;
    this.readchars = n => {const s=this.data.slice(this.position,this.position+n);this.position+=s.length;return s.split('');};
    this.readstring = n => this.readchars(n).join('');
    // No real writes: the test checks the destination before any I/O.
    this.writechars = function() {};
    this.close = () => {this.isopen=false;};
  }
  function Global(name) {globals.push(name); assert(name.startsWith(prefix));}
  const c = {Task, File, Global, jsarguments:[file,namespace], inlet:0,
    outlet:function(){}, error:function(){}, post:function(){},
    arrayfromargs:a=>Array.from(a),
    messnamed:function(){sent.push(Array.from(arguments));}
  };
  vm.createContext(c);
  vm.runInContext(fs.readFileSync(path.join(codeDir,file),'utf8'), c);
  return c;
}
const player = context(prefix+'bio_trajektorien.js');
for (const bank of [0,1]) {
  player.species(bank);
  for(let i=1; i<=(bank?42:700); ++i) assert(player.loadFlight(i), 'Cannot load flight '+bank+':'+i);
}
const recorder = context(prefix+'quad_motion_recorder.js');
for (const badPath of [manifest.source+'/data/fliegensynthmain_setup.json','../../original.json','Macintosh HD:'+manifest.source+'/original.json']) {
  recorder.write(badPath);
  const [destination, mode] = opened[opened.length-1];
  assert.equal(mode,'write');
  assert.equal(destination,path.join(root,'recordings',prefix+'motion_bank.json'));
  recorder.read(badPath);
  assert.equal(opened[opened.length-1][0],destination);
}
for (const namespace of ['3922','default','0','12345']) {
  const swarm = context(prefix+'swarm_attractor.js', namespace);
  // Exercise static fallback and dynamic target bus branches, including fallback ID 3922.
  const text = fs.readFileSync(path.join(codeDir,prefix+'swarm_attractor.js'),'utf8');
  const line = text.split('\n').find(s=>s.includes('var targetBus='));
  vm.runInContext(line,swarm);
}
assert(sent.length > 0);
for(const message of sent) assert(message[0].startsWith(prefix),message[0]);
// Max substitutes #n only at the beginning of a word (Cycling '74, Abstractions).
function expand(symbol, id, arg1) {
  return symbol.replace(/^#([01])/,(_,n)=>String(n==='0'?id:arg1));
}
const poly = JSON.parse(fs.readFileSync(path.join(root,'patchers',prefix+'MS_FlyVoice_Poly.maxpat'))).patcher;
const synth = JSON.parse(fs.readFileSync(path.join(root,'patchers',prefix+'MS_fly.maxpat'))).patcher;
const panner = JSON.parse(fs.readFileSync(path.join(root,'patchers',prefix+'Quadpanner_FlyVoice.maxpat'))).patcher;
const box = (p,id)=>p.boxes.find(q=>q.box.id===id).box;
const symbol = (p,id)=>box(p,id).text.split(/\s+/)[1];
const voiceBuses = new Set();
for(let id=10001; id<=10050; ++id) {
  const own = expand(symbol(poly,'cmd-send'),id,id);
  assert(own.includes(prefix) && !own.includes('#'));
  assert.equal(own,expand(symbol(poly,'cmd-recv'),id,id));
  assert(!voiceBuses.has(own));voiceBuses.add(own);
  const mono=expand(symbol(poly,'mono-send'),id,id);
  assert.equal(mono,expand(symbol(panner,'obj-8'),id+1000,id));
  const xy=expand(symbol(poly,'xy-recv'),id,id);
  assert.equal(xy,expand(symbol(synth,'obj-22'),id+2000,id));
}
const recordPath=context(prefix+'audio_record_path.js','10001');
let recordMessage;
recordPath.outlet=function(){recordMessage=Array.from(arguments);};
recordPath.bang();
assert.equal(recordMessage[1],'open');
assert.equal(path.resolve(recordMessage[2]),path.join(root,'recordings',prefix+'10001_audio.wav'));
for(const preset of ['fly_notches','fliegensynthmain_setup']) {
 const module=context(prefix+'preset_path.js',prefix+preset+'.json');
 let message;module.outlet=function(){message=Array.from(arguments);};
 for(const command of ['read','write']) {
  module[command]();assert.equal(message[1],command);
  const resolved=path.resolve(message[2]);
  assert.equal(resolved,path.join(root,'data',prefix+preset+'.json'));
  assert(fs.existsSync(resolved));
 }
}
console.log(JSON.stringify({status:'PASS',syntax_checked:files.length,flight_loads:742,
  arbitrary_recorder_paths_redirected:3,global_names_checked:globals.length,
  named_messages_checked:sent.length,poly_instances_with_distinct_buses:voiceBuses.size,
  mono_and_xy_links_checked:100,recording_instance_path_checked:true,preset_paths_checked:4,
  real_files_written:0,max_runtime:false},null,2));
