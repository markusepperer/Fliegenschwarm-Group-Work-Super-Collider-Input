autowatch = 1;
inlets = 1;
outlets = 2;

var minDomain = 60.0;
var maxDomain = 140.0;

function clip(v, lo, hi) {
    return Math.max(lo, Math.min(hi, v));
}

function rr(lo, hi) {
    return lo + Math.random() * (hi - lo);
}

function setmin(v) {
    minDomain = Math.max(1.0, Number(v));
    if (maxDomain < minDomain) maxDomain = minDomain;
}

function setmax(v) {
    maxDomain = Math.max(1.0, Number(v));
    if (minDomain > maxDomain) minDomain = maxDomain;
}

function anything() {
    var a = arrayfromargs(messagename, arguments);
    if (a[0] === "min" && a.length > 1) {
        setmin(a[1]);
    } else if (a[0] === "max" && a.length > 1) {
        setmax(a[1]);
    }
}

function bang() {
    var d = rr(minDomain, maxDomain);

    var x1 = d * rr(0.06, 0.14);
    var x2 = d * rr(0.18, 0.28);
    var x3 = d * rr(0.34, 0.50);
    var x4 = d * rr(0.55, 0.68);
    var x5 = d * rr(0.72, 0.84);
    var x6 = d * rr(0.88, 0.95);

    var y1 = rr(0.30, 0.60);
    var y2 = clip(y1 + rr(-0.20, 0.10), 0.15, 0.55);
    var y3 = clip(y2 + rr(0.25, 0.60), 0.65, 1.00);
    var y4 = clip(y3 + rr(-0.45, -0.20), 0.25, 0.70);
    var y5 = clip(y4 + rr(-0.10, 0.25), 0.30, 0.80);
    var y6 = clip(y5 + rr(-0.60, -0.25), 0.00, 0.20);

    // Right outlet: report chosen domain in ms.
    outlet(1, d);

    // Left outlet: commands go directly into [function].
    outlet(0, "clear");
    outlet(0, ["setdomain", d]);
    outlet(0, [0.0, 0.0]);
    outlet(0, [x1, y1]);
    outlet(0, [x2, y2]);
    outlet(0, [x3, y3]);
    outlet(0, [x4, y4]);
    outlet(0, [x5, y5]);
    outlet(0, [x6, y6]);
    outlet(0, [d, 0.0]);

    // Make [function] output its line~-formatted breakpoint list.
    outlet(0, "bang");
}
