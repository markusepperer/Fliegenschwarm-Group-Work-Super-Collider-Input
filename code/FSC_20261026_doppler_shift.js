autowatch = 1;
inlets = 3;
outlets = 2;

// inlet 0: live XY list from #1_Flugkoordinaten
// inlet 1: live speed in m/s from #1_ManeuverSpeed
// inlet 2: amount 0..2 (1 = physical Doppler amount)
// outlet 0: frequency ratio around 1.0
// outlet 1: signed radial speed in m/s (+ approaching, - receding)
var speed = 0.0;
var amount = 1.0;
var havePosition = false;
var previousX = 0.5;
var previousY = 0.5;
var lastCosine = 0.0;
var SOUND_SPEED = 343.0;
var MIN_STEP = 0.0015;
var CENTER_RADIUS = 0.03;

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }

function emit() {
    var radial = speed * lastCosine;
    radial = clamp(radial, -20.0, 20.0);
    var physicalRatio = SOUND_SPEED / (SOUND_SPEED - radial);
    var ratio = 1.0 + (physicalRatio - 1.0) * amount;
    ratio = clamp(ratio, 0.9, 1.1);
    outlet(1, radial);
    outlet(0, ratio);
}

function processxy(x, y) {
    x = Number(x); y = Number(y);
    if (!isFinite(x) || !isFinite(y)) return;
    if (!havePosition) {
        previousX = x; previousY = y; havePosition = true;
        lastCosine = 0.0; emit(); return;
    }
    var dx = x - previousX, dy = y - previousY;
    var movement = Math.sqrt(dx*dx + dy*dy);
    previousX = x; previousY = y;
    if (movement < MIN_STEP) { emit(); return; }
    var lx = 0.5 - x, ly = 0.5 - y;
    var listenerDistance = Math.sqrt(lx*lx + ly*ly);
    if (listenerDistance < CENTER_RADIUS) {
        lastCosine = 0.0; emit(); return;
    }
    lastCosine = clamp((dx*lx + dy*ly) / (movement*listenerDistance), -1.0, 1.0);
    emit();
}

function list() {
    var a = arrayfromargs(arguments);
    if (inlet === 0 && a.length >= 2) processxy(a[0], a[1]);
}

function msg_float(v) {
    v = Number(v); if (!isFinite(v)) return;
    if (inlet === 1) speed = clamp(v, 0.0, 20.0);
    else if (inlet === 2) amount = clamp(v, 0.0, 2.0);
    emit();
}

function msg_int(v) { msg_float(v); }
function reset() {
    speed = 0.0; amount = 1.0; havePosition = false;
    previousX = previousY = 0.5; lastCosine = 0.0; emit();
}

function loadbang() { reset(); }
