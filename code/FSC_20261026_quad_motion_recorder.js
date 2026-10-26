autowatch = 0;
inlets = 1;
outlets = 6;

// outlets:
// 0 = XY
// 1 = selected mode
// 2 = status
// 3 = slot menu
// 4 = editable name
// 5 = countdown in seconds

var slots = [];
var selected = 0;
var take = null;
var state = 'idle';
var modeValue = 0;

var durationMs = 10000;
var returnMs = 1000;
var startAt = 0;
var playAt = 0;
var points = [];
var last = [.5, .5];
var baseline = null;

var names = [
    'Flieger',
    'Achter',
    'Niere',
    'Bewegung 4',
    'Bewegung 5',
    'Bewegung 6',
    'Bewegung 7',
    'Bewegung 8'
];

for (var i = 0; i < 8; i++)
    slots.push({name:names[i], clip:null});

var clockTask = new Task(tick, this);
clockTask.interval = 20;

var lastCountdown = -1;


// ------------------------------------------------------------
// HILFSFUNKTIONEN
// ------------------------------------------------------------

function now()
{
    return new Date().getTime();
}

function status(s)
{
    outlet(2, s);
}

function clip(v)
{
    return Math.max(0, Math.min(1, Number(v)));
}

function copy(v)
{
    return JSON.parse(JSON.stringify(v));
}


// ------------------------------------------------------------
// COUNTDOWN
// ------------------------------------------------------------

function countdownStart()
{
    lastCountdown = Math.ceil(durationMs / 100);
    outlet(5, durationMs / 1000);
}

function countdownUpdate(elapsed)
{
    var remaining = Math.max(0, durationMs - elapsed);
    var value = Math.ceil(remaining / 100);

    if (value !== lastCountdown)
    {
        lastCountdown = value;
        outlet(5, value / 10);
    }
}

function countdownStop()
{
    lastCountdown = -1;
    outlet(5, 0);
}


// ------------------------------------------------------------
// SLOT-ANZEIGE
// ------------------------------------------------------------

function refresh()
{
    outlet(3, 'clear');

    for (var i = 0; i < 8; i++)
    {
        outlet(
            3,
            'append',
            (i + 1) + ' ' +
            slots[i].name +
            (slots[i].clip ? '' : ' (leer)')
        );
    }

    outlet(3, 'set', selected);
    outlet(4, 'set', slots[selected].name);
}


// ------------------------------------------------------------
// INITIALISIERUNG
// ------------------------------------------------------------

function loadbang()
{
    refresh();
    countdownStop();

    status('Bereit. ARM, dann gelben Punkt ziehen.');
}


// ------------------------------------------------------------
// EINSTELLUNGEN
// ------------------------------------------------------------

function duration(v)
{
    durationMs = Math.max(
        100,
        Math.min(120000, Number(v) * 1000)
    );
}

function closure(v)
{
    returnMs = Math.max(
        100,
        Math.min(30000, Number(v) * 1000)
    );
}


// ------------------------------------------------------------
// MODUS
// ------------------------------------------------------------

function mode(v)
{
    modeValue = Number(v);

    if (modeValue === 5 && state === 'idle')
    {
        if (take)
        {
            play();
            return;
        }

        status('Noch kein Take: ARM oder Speicherplatz abrufen.');
    }

    if (modeValue !== 5 && state === 'playing')
    {
        clockTask.cancel();
        state = 'idle';

        status('Wiedergabe angehalten.');
    }

    if (
        modeValue !== 0 &&
        (state === 'armed' || state === 'recording')
    )
    {
        clockTask.cancel();
        state = 'idle';

        countdownStop();

        status('Aufnahme abgebrochen: anderer Modus.');
    }
}


// ------------------------------------------------------------
// ARM
// ------------------------------------------------------------

function arm()
{
    clockTask.cancel();

    state = 'armed';
    baseline = last.slice();

    outlet(1, 0);

    status('SCHARF: Aufnahme beginnt bei erster Bewegung.');
}


// ------------------------------------------------------------
// MAUS / XY
// ------------------------------------------------------------

function mouse(x, y)
{
    if (!isFinite(x) || !isFinite(y))
        return;

    var pos = [
        clip(x),
        clip(y)
    ];

    if (
        state === 'armed' &&
        (
            !baseline ||
            Math.abs(pos[0] - baseline[0]) +
            Math.abs(pos[1] - baseline[1]) > .00001
        )
    )
    {
        last = pos;

        state = 'recording';

        points = [
            [0, pos[0], pos[1]]
        ];

        startAt = now();

        countdownStart();

        clockTask.repeat();

        status('AUFNAHME läuft.');

        return;
    }

    last = pos;

    if (state === 'recording')
    {
        sample(
            Math.min(
                durationMs,
                now() - startAt
            )
        );
    }
}


function mouseidle(x, y)
{
    // Hovering darf weder Aufnahme
    // noch Countdown starten.
}


// ------------------------------------------------------------
// AUFNAHME
// ------------------------------------------------------------

function sample(t)
{
    var p = [
        t,
        last[0],
        last[1]
    ];

    if (
        points.length &&
        points[points.length - 1][0] === t
    )
    {
        points[points.length - 1] = p;
    }
    else
    {
        points.push(p);
    }
}


// ------------------------------------------------------------
// ZENTRALE CLOCK
// ------------------------------------------------------------

function tick()
{
    var t = now();

    if (state === 'recording')
    {
        var elapsed = t - startAt;

        sample(
            Math.min(
                durationMs,
                elapsed
            )
        );

        countdownUpdate(elapsed);

        if (elapsed >= durationMs)
            finish(durationMs);
    }

    else if (state === 'playing' && take)
    {
        outlet(
            0,
            position(
                take,
                (t - playAt) %
                (take.duration + take.closure)
            )
        );
    }
}


// ------------------------------------------------------------
// AUFNAHME ABSCHLIESSEN
// ------------------------------------------------------------

function finish(ms)
{
    if (ms < 20)
    {
        cancel();
        return;
    }

    sample(ms);

    take = {
        duration: ms,
        closure: returnMs,
        points: copy(points)
    };

    state = 'idle';

    clockTask.cancel();

    countdownStop();

    playEnd();
}


// ------------------------------------------------------------
// NACH AUFNAHME DIREKT LOOP STARTEN
// ------------------------------------------------------------

function playEnd()
{
    state = 'playing';

    outlet(1, 5);

    playAt = now() - take.duration;

    clockTask.repeat();

    outlet(
        0,
        position(
            take,
            take.duration
        )
    );

    status(
        'Loop läuft. STORE legt ihn im gewählten Platz ab.'
    );
}


// ------------------------------------------------------------
// STOP
// ------------------------------------------------------------

function stop()
{
    if (state === 'recording')
    {
        finish(
            Math.min(
                durationMs,
                now() - startAt
            )
        );

        return;
    }

    clockTask.cancel();

    state = 'idle';

    countdownStop();

    outlet(1, 0);

    status(
        'Gestoppt; Aufnahme bleibt verfügbar.'
    );
}


// ------------------------------------------------------------
// ABBRUCH
// ------------------------------------------------------------

function cancel()
{
    clockTask.cancel();

    state = 'idle';

    countdownStop();

    outlet(1, 0);

    status(
        'Aufnahme abgebrochen. Vorheriger Take bleibt verfügbar.'
    );
}


// ------------------------------------------------------------
// PLAY
// ------------------------------------------------------------

function play()
{
    if (!take)
    {
        status('Noch keine Aufnahme.');
        return;
    }

    state = 'playing';

    outlet(1, 5);

    playAt = now();

    clockTask.repeat();

    outlet(
        0,
        position(
            take,
            0
        )
    );

    status('Loop läuft.');
}


// ------------------------------------------------------------
// INTERPOLATION
// ------------------------------------------------------------

function position(c, t)
{
    var a = c.points;
    var first = a[0];
    var end = a[a.length - 1];

    if (t >= c.duration)
    {
        var u = Math.max(
            0,
            Math.min(
                1,
                (t - c.duration) / c.closure
            )
        );

        u = u * u * (3 - 2 * u);

        return [
            end[1] + u * (first[1] - end[1]),
            end[2] + u * (first[2] - end[2])
        ];
    }

    var lo = 0;
    var hi = a.length - 1;

    while (lo + 1 < hi)
    {
        var m = (lo + hi) >> 1;

        if (a[m][0] <= t)
            lo = m;
        else
            hi = m;
    }

    var l = a[lo];
    var r = a[hi];

    var u2 =
        r[0] > l[0]
        ? (t - l[0]) / (r[0] - l[0])
        : 0;

    return [
        l[1] + u2 * (r[1] - l[1]),
        l[2] + u2 * (r[2] - l[2])
    ];
}


// ------------------------------------------------------------
// SLOTS
// ------------------------------------------------------------

function slot(v)
{
    selected = Math.max(
        0,
        Math.min(
            7,
            Math.floor(v)
        )
    );

    outlet(
        4,
        'set',
        slots[selected].name
    );

    status(
        'Platz ' +
        (selected + 1) +
        ': ' +
        slots[selected].name +
        (slots[selected].clip ? '' : ' — leer')
    );
}


// ------------------------------------------------------------
// UMBENENNEN
// ------------------------------------------------------------

function rename()
{
    var a = arrayfromargs(arguments);

    slots[selected].name =
        a.join(' ').slice(0, 60) ||
        ('Bewegung ' + (selected + 1));

    refresh();
}


// ------------------------------------------------------------
// STORE
// ------------------------------------------------------------

function store()
{
    if (!take || state === 'recording')
    {
        status('Zuerst eine Aufnahme abschließen.');
        return;
    }

    slots[selected].clip = copy(take);

    refresh();

    status(
        'Im Platz gespeichert. Für dauerhaftes Sichern: Bank sichern.'
    );
}


// ------------------------------------------------------------
// RECALL
// ------------------------------------------------------------

function recall()
{
    if (!slots[selected].clip)
    {
        status('Dieser Platz ist leer.');
        return;
    }

    clockTask.cancel();

    take = copy(
        slots[selected].clip
    );

    state = 'idle';

    play();
}


// ------------------------------------------------------------
// BANK VALIDIEREN
// ------------------------------------------------------------

function validBank(b)
{
    if (
        !b ||
        b.version !== 1 ||
        !b.slots ||
        b.slots.length !== 8
    )
        throw Error('Ungültige Bank');

    for (var i = 0; i < 8; i++)
    {
        var s = b.slots[i];

        if (typeof s.name !== 'string')
            throw Error('Name fehlt');

        var c = s.clip;

        if (!c)
            continue;

        if (
            !(c.duration >= 20 &&
              c.duration <= 120000 &&
              c.closure >= 100 &&
              c.closure <= 30000) ||
            !c.points ||
            c.points.length < 2 ||
            c.points.length > 100000
        )
            throw Error('Ungültige Bewegung');

        var prev = -1;

        for (var j = 0; j < c.points.length; j++)
        {
            var p = c.points[j];

            if (
                p.length !== 3 ||
                !isFinite(p[0]) ||
                p[0] < prev ||
                p[0] > c.duration ||
                !isFinite(p[1]) ||
                !isFinite(p[2]) ||
                p[1] < 0 ||
                p[1] > 1 ||
                p[2] < 0 ||
                p[2] > 1
            )
                throw Error('Ungültiger Punkt');

            prev = p[0];
        }

        if (
            c.points[0][0] !== 0 ||
            prev !== c.duration
        )
            throw Error('Zeitgrenzen fehlen');
    }

    return b;
}


// ------------------------------------------------------------
// BANK SCHREIBEN
// In kleinen Bloecken, damit die Datei nicht bei 32767
// Bytes abgeschnitten wird.
// ------------------------------------------------------------

function write()
{
    var path = fscLocalPath("recordings/FSC_20261026_motion_bank.json");
    var f;

    try
    {
        f = new File(path, 'write');

        if (!f.isopen)
            throw Error('Datei nicht geöffnet');

        f.eof = 0;
        f.position = 0;

        var data = JSON.stringify({
            version: 1,
            slots: slots
        });

        var chunkSize = 1024;

        for (var i = 0; i < data.length; i += chunkSize)
        {
            var end = Math.min(
                i + chunkSize,
                data.length
            );

            var chars = [];

            for (var j = i; j < end; j++)
                chars.push(data.charAt(j));

            f.writechars(chars);
        }

        f.close();

        status(
            'Bank gesichert: ' +
            data.length +
            ' Zeichen.'
        );
    }
    catch (e)
    {
        if (f && f.isopen)
            f.close();

        status(
            'Sichern fehlgeschlagen: ' +
            e.message
        );
    }
}


// ------------------------------------------------------------
// BANK LESEN
// ------------------------------------------------------------

function read()
{
    var path = fscLocalPath("recordings/FSC_20261026_motion_bank.json");
    var f;

    try
    {
        f = new File(path, 'read');

        if (
            !f.isopen ||
            f.eof > 20000000
        )
            throw Error(
                'Datei nicht lesbar oder zu groß'
            );

        var s = '';

        while (f.position < f.eof)
            s += f.readstring(4096);

        f.close();

        var b = validBank(
            JSON.parse(s)
        );

        clockTask.cancel();

        state = 'idle';

        countdownStop();

        outlet(1, 0);

        take = null;

        slots = b.slots;

        refresh();

        status(
            'Bank geladen. Platz wählen und ABRUFEN drücken.'
        );
    }
    catch (e)
    {
        if (f && f.isopen)
            f.close();

        status(
            'Laden fehlgeschlagen: ' +
            e.message
        );
    }
}


// ------------------------------------------------------------
// CLEANUP
// ------------------------------------------------------------

function notifydeleted()
{
    clockTask.cancel();
    clockTask.freepeer();
}
// Resolve only this uniquely named local script; never use a fixed checkout path.
function fscCodeFolder(){
 var f=new File(jsarguments[0],"read");
 if(!f.isopen)throw new Error("Local FSC script not found: "+jsarguments[0]);
 var folder=f.foldername;f.close();
 if(!folder)throw new Error("Local FSC code folder unavailable");
 return folder.replace(/\/$/,"")+"/";
}
function fscLocalPath(relative){return fscCodeFolder()+"../"+relative;}
