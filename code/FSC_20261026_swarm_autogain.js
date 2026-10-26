autowatch = 1;
inlets = 1;
outlets = 2;

function setcount(v) {
    var n = Math.max(0, Math.min(50, Math.floor(Number(v))));
    if (!isFinite(n) || n <= 0) {
        outlet(1, -120.0);
        outlet(0, 0.0);
        return;
    }
    var db = -6.0 + 14.0 * Math.log(n) / Math.log(50.0);
    var amplitude = Math.pow(10.0, db / 20.0);
    outlet(1, db);
    outlet(0, amplitude);
}

function msg_int(v) { setcount(v); }
function msg_float(v) { setcount(v); }
function loadbang() { setcount(0); }
