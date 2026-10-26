autowatch = 1;
inlets = 1;
outlets = 2;

// Receives normalized XY coordinates [x y].
// outlet 0: axial orientation 0..1 (0 = lateral, 1 = along body axis)
// outlet 1: signed cosine -1..1 (approaching/receding indicator for display)
var havePosition = false;
var anchorX = 0.5;
var anchorY = 0.5;
var lastAxial = 0.5;
var MIN_STEP = 0.0015;
var CENTER_RADIUS = 0.03;

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function reset() {
    havePosition = false;
    anchorX = anchorY = 0.5;
    lastAxial = 0.5;
    outlet(1, 0.0);
    outlet(0, 0.5);
}
function processxy(x, y) {
    x = Number(x); y = Number(y);
    if (!isFinite(x) || !isFinite(y)) return;
    if (!havePosition) {
        anchorX = x; anchorY = y; havePosition = true;
        outlet(1, 0.0); outlet(0, lastAxial); return;
    }
    var dx = x - anchorX, dy = y - anchorY;
    var move = Math.sqrt(dx*dx + dy*dy);
    if (move < MIN_STEP) return; // hold orientation near standstill
    anchorX = x; anchorY = y;
    var lx = 0.5 - x, ly = 0.5 - y;
    var listenerDistance = Math.sqrt(lx*lx + ly*ly);
    if (listenerDistance < CENTER_RADIUS) {
        lastAxial = 0.5; // orientation is undefined at the listening point
        outlet(1, 0.0); outlet(0, lastAxial); return;
    }
    var cosine = clamp((dx*lx + dy*ly) / (move*listenerDistance), -1.0, 1.0);
    lastAxial = Math.abs(cosine);
    outlet(1, cosine);
    outlet(0, lastAxial);
}
function list() { var a = arrayfromargs(arguments); if (a.length >= 2) processxy(a[0], a[1]); }
function xy(x, y) { processxy(x, y); }
function msg_float(v) { /* ignore scalar messages */ }
function loadbang() { reset(); }
