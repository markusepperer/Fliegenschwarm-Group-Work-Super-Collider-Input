autowatch = 1;
inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var maximum = 50;
var activeVoices = 4;
var swarmCount = 1;
var positions = [];
var shiftX = 0.0;
var shiftY = 0.0;
var expandValue = 100.0;
var spreadValue = 100.0;
var rotateValue = 0.0;
var shakeValue = 0.0;
var shakeOffsets = [[0,0],[0,0],[0,0],[0,0]];
var drawPending = false;
var drawTask = new Task(drawNow, this);
var portalMode=0, portalX=.5, portalY=.5, portalDirection=0, portalWidth=45;
var landingMode=0,landingPointCount=1,landingCycleSeconds=10,landingStartWindow=0,landingEndWindow=0,landingSeed=1,landingEpoch=0;
var landingDisplayStates=[];
var landingReportedTargets=[];

function clamp(v, lo, hi) {
    return Math.max(lo, Math.min(hi, Number(v)));
}

function requestDraw() {
    if (drawPending) return;
    drawPending = true;
    drawTask.schedule(33);
}

function drawNow() {
    drawPending = false;
    mgraphics.redraw();
}

function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 3) return;
    var id = Math.floor(Number(a[0]));
    var x = Number(a[1]);
    var y = Number(a[2]);
    if (!isFinite(id) || id < 1 || id > maximum || !isFinite(x) || !isFinite(y)) return;
    positions[id] = [x, y];
    requestDraw();
}

function swarms(v) { swarmCount = Math.floor(clamp(v, 1, 4)); requestDraw(); }
function portalmode(v){portalMode=Math.floor(clamp(v,-1,1));requestDraw();}
function portalx(v){portalX=clamp(v,0,1);requestDraw();}
function portaly(v){portalY=clamp(v,0,1);requestDraw();}
function portalxy(x,y){portalX=clamp(x,0,1);portalY=clamp(y,0,1);requestDraw();}
function portaldirection(v){portalDirection=((Number(v)%360)+360)%360;requestDraw();}
function portalwidth(v){portalWidth=clamp(v,0,360);requestDraw();}
function resetLandingDisplay(){landingDisplayStates=[];landingReportedTargets=[];}
function landingmode(v,eventToken,seed){landingMode=Number(v)!==0?1:0;var s=arguments.length>2?Number(seed):Number(eventToken);if(arguments.length>1&&isFinite(s)){landingSeed=s;landingEpoch=new Date().getTime();resetLandingDisplay();}requestDraw();}
function landingpoints(v){landingPointCount=Math.max(1,Math.min(50,Math.floor(Number(v))));requestDraw();}
function landingcycle(v){landingCycleSeconds=Math.max(.5,Math.min(120,Number(v)));requestDraw();}
function landingstartwindow(v){landingStartWindow=Math.max(0,Math.min(120,Number(v)));retimeDisplayJourneys();requestDraw();}
function landingendwindow(v){landingEndWindow=Math.max(0,Math.min(120,Number(v)));retimeDisplayJourneys();requestDraw();}
function landingtrigger(v,eventToken,seed){var s=arguments.length>2?Number(seed):Number(eventToken);if(arguments.length>1&&isFinite(s))landingSeed=s;landingEpoch=new Date().getTime();resetLandingDisplay();requestDraw();}
function landingHash(v){var h=Math.sin(v*12.9898+78.233)*43758.5453;return h-Math.floor(h);}
function landingtarget(id,x,y){id=Math.floor(Number(id));x=Number(x);y=Number(y);if(id>=1&&id<=maximum&&isFinite(x)&&isFinite(y)){landingReportedTargets[id]=[x,y];requestDraw();}}
function displayLandingCandidate(cycle,point,attempt){return [.08+.84*landingHash(landingSeed*101.3+cycle*71.7+point*17.1+attempt*131.9),.08+.84*landingHash(landingSeed*211.9+cycle*43.3+point*29.7+attempt*197.3)];}
function displayLandingTarget(id,cycle,previous){var count=Math.max(1,Math.min(landingPointCount,activeVoices)),point=(id-1)%count,candidate;if(cycle<=0||!previous){candidate=displayLandingCandidate(cycle,point,0);return [candidate[0],candidate[1],point];}var minimum=Math.sqrt(2)*.25,best=null,bestDistance=-1;for(var attempt=0;attempt<32;attempt++){candidate=displayLandingCandidate(cycle,point,attempt);var dx=candidate[0]-previous[0],dy=candidate[1]-previous[1],d=Math.sqrt(dx*dx+dy*dy);if(d>=minimum)return[candidate[0],candidate[1],point];if(d>bestDistance){bestDistance=d;best=candidate;}}return[best[0],best[1],point];}
function scheduleDisplayJourney(id,cycle,t,baseTime,previousTarget){
    var startRank=landingHash(landingSeed*307.1+cycle*89.3+id*53.9);
    var endRank=landingHash(landingSeed*503.7+cycle*47.1+id*31.3);
    var cycleStart=isFinite(baseTime)?baseTime:landingEpoch;
    var depart=cycleStart+startRank*landingStartWindow*1000.;
    var rest=Math.min(2,Math.max(0,landingCycleSeconds-landingStartWindow-landingEndWindow));
    var arrivalBase=Math.max(landingStartWindow,landingCycleSeconds-rest-landingEndWindow);
    var arrive=cycleStart+(arrivalBase+endRank*landingEndWindow)*1000.;
    if(arrive<depart+200)arrive=depart+200;
    if(depart<t){var travel=arrive-depart;depart=t;arrive=t+Math.max(200,travel);}
    var target=displayLandingTarget(id,cycle,previousTarget);
    landingDisplayStates[id]={cycle:cycle,base:cycleStart,depart:depart,arrive:arrive,target:target,appliedDuration:landingCycleSeconds,nextOpportunity:cycleStart+landingCycleSeconds*1000.};
    return landingDisplayStates[id];
}
function currentDisplayJourney(id,t){
    var state=landingDisplayStates[id];if(!state)state=scheduleDisplayJourney(id,0,t,landingEpoch,null);
    if(t>=state.arrive){if(Math.abs(state.appliedDuration-landingCycleSeconds)>1e-9)state.nextOpportunity=t;if(t>=state.nextOpportunity){var opportunity=state.nextOpportunity,step=landingCycleSeconds*1000.;while(opportunity+step<=t)opportunity+=step;var previous=state.target;state=scheduleDisplayJourney(id,state.cycle+1,t,opportunity,previous);state.appliedDuration=landingCycleSeconds;state.nextOpportunity=opportunity+step;}}
    return state;
}
function retimeDisplayJourneys(){
    if(!landingMode)return;var t=new Date().getTime();
    for(var id=1;id<=activeVoices;id++){
        var state=landingDisplayStates[id];if(!state)continue;
        var startRank=landingHash(landingSeed*307.1+state.cycle*89.3+id*53.9);
        var endRank=landingHash(landingSeed*503.7+state.cycle*47.1+id*31.3);
        var rest=Math.min(2,Math.max(0,landingCycleSeconds-landingStartWindow-landingEndWindow));
        var arrivalBase=Math.max(landingStartWindow,landingCycleSeconds-rest-landingEndWindow);
        var departOffset=startRank*landingStartWindow*1000.,arrivalOffset=(arrivalBase+endRank*landingEndWindow)*1000.;
        if(t<state.depart){state.base=t;state.depart=t+departOffset;state.arrive=t+Math.max(departOffset+200,arrivalOffset);}
        else if(t<state.arrive){var progress=Math.max(0,Math.min(1,(t-state.depart)/Math.max(1,state.arrive-state.depart))),travel=Math.max(200,arrivalOffset-departOffset);state.base=t;state.depart=t;state.arrive=t+Math.max(200,travel*(1-progress));}
    }
}

function voices(v) {
    activeVoices = Math.floor(clamp(v, 0, maximum));
    requestDraw();
}

function expand(v) { expandValue = clamp(v, 1, 200); requestDraw(); }
function spread(v) { spreadValue = clamp(v, 0, 140); requestDraw(); }
function rotate(v) { rotateValue = clamp(v, -180, 180); requestDraw(); }
function shiftx(v) { shiftX = clamp(v, -1, 1); requestDraw(); }
function shifty(v) { shiftY = clamp(v, -1, 1); requestDraw(); }
function shake(v) {
    shakeValue = clamp(v, 0, 1);
    for (var i = 0; i < 4; i++) {
        shakeOffsets[i] = [(Math.random() * 2 - 1) * shakeValue * 0.10,
                           (Math.random() * 2 - 1) * shakeValue * 0.10];
    }
    requestDraw();
}
function resetquad() {
    shiftX = 0; shiftY = 0; expandValue = 100; spreadValue = 100;
    rotateValue = 0; shakeValue = 0;
    shakeOffsets = [[0,0],[0,0],[0,0],[0,0]];
    requestDraw();
}

function nodeGeometry() {
    var d = spreadValue * 0.0035;
    var angle = rotateValue * Math.PI / 180.0;
    var c = Math.cos(angle), s = Math.sin(angle);
    var base = [[-d,-d],[d,-d],[-d,d],[d,d]];
    var result = [];
    for (var i = 0; i < 4; i++) {
        var dx = base[i][0], dy = base[i][1];
        result.push([0.5 + shiftX + c*dx - s*dy + shakeOffsets[i][0],
                     0.5 + shiftY + s*dx + c*dy + shakeOffsets[i][1]]);
    }
    return result;
}

function centeredText(text, x, y) {
    var size = mgraphics.text_measure(text);
    mgraphics.move_to(x - size[0] * 0.5, y);
    mgraphics.show_text(text);
}

function drawSpeaker(name, x, y, side, index) {
    // Local speaker points to the right; rotate each corner toward the centre.
    var angles = [Math.PI/4, 3*Math.PI/4, -Math.PI/4, -3*Math.PI/4];
    var body = Math.max(5, side * 0.015);
    var cone = Math.max(8, side * 0.026);

    mgraphics.save();
    mgraphics.translate(x, y);
    mgraphics.rotate(angles[index]);
    mgraphics.set_source_rgba(0.40, 0.42, 0.45, 1.0);
    mgraphics.rectangle(-body-cone*0.35, -body*0.60, body, body*1.20);
    mgraphics.fill();
    mgraphics.move_to(-cone*0.35, -body*0.60);
    mgraphics.line_to(cone*0.65, -cone*0.62);
    mgraphics.line_to(cone*0.65, cone*0.62);
    mgraphics.line_to(-cone*0.35, body*0.60);
    mgraphics.close_path();
    mgraphics.fill();
    mgraphics.restore();

    mgraphics.set_font_size(Math.max(9, side * 0.026));
    mgraphics.set_source_rgba(0.22, 0.24, 0.28, 1.0);
    var labelOffset = Math.max(14, side * 0.045);
    // Front labels above their speakers, rear labels below.
    centeredText(name, x, index < 2 ? y-labelOffset : y+labelOffset+side*0.012);
}

function paint() {
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
    var side = Math.min(width, height);
    var ox = (width - side) * 0.5;
    var oy = (height - side) * 0.5;

    mgraphics.set_source_rgba(0.93, 0.95, 0.97, 1.0);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    var geometry = nodeGeometry();
    // Max nodes treats nsize as the radius of the influence zone. The former
    // drawing used it as the diameter and therefore rendered half-size zones.
    var diameter = expandValue * 0.0063 * side * 2.0;
    var names = ["1 FL", "2 FR", "4 RL", "3 RR"];

    for (var i = 0; i < 4; i++) {
        var nx = ox + geometry[i][0] * side;
        var ny = oy + geometry[i][1] * side;
        mgraphics.set_source_rgba(0.30, 0.50, 0.70, 0.22);
        mgraphics.ellipse(nx - diameter*0.5, ny - diameter*0.5, diameter, diameter);
        mgraphics.fill();
    }

    mgraphics.select_font_face("Arial");
    for (i = 0; i < 4; i++) {
        nx = ox + geometry[i][0] * side;
        ny = oy + geometry[i][1] * side;
        drawSpeaker(names[i], nx, ny, side, i);
    }

    if (portalMode !== 0) {
        var cx=ox+portalX*side,cy=oy+portalY*side,dir=portalDirection*Math.PI/180.,half=portalWidth*.5*Math.PI/180.,ray=side*.16;
        mgraphics.set_source_rgba(0.12,0.12,0.15,.8);mgraphics.set_line_width(2);
        mgraphics.ellipse(cx-7,cy-7,14,14);mgraphics.stroke();mgraphics.ellipse(cx-3,cy-3,6,6);mgraphics.fill();
        mgraphics.set_source_rgba(0.72,0.20,0.08,.75);mgraphics.set_line_width(1.5);
        var a1=dir-half,a2=dir+half;mgraphics.move_to(cx,cy);mgraphics.line_to(cx+Math.cos(a1)*ray,cy+Math.sin(a1)*ray);mgraphics.move_to(cx,cy);mgraphics.line_to(cx+Math.cos(a2)*ray,cy+Math.sin(a2)*ray);mgraphics.stroke();
        mgraphics.move_to(cx,cy);mgraphics.line_to(cx+Math.cos(dir)*ray*.85,cy+Math.sin(dir)*ray*.85);mgraphics.stroke();
    }

    if (landingMode !== 0) {
        var shownTargets={};
        mgraphics.set_line_width(1.25);
        for(var landingVoice=1;landingVoice<=activeVoices;landingVoice++){
            var actualTarget=landingReportedTargets[landingVoice];if(!actualTarget)continue;
            var key=actualTarget[0].toFixed(7)+":"+actualTarget[1].toFixed(7);
            if(shownTargets[key])continue;shownTargets[key]=1;
            var landingX=ox+actualTarget[0]*side,landingY=oy+actualTarget[1]*side;
            var landingRadius=Math.max(4.5,side*.012);
            mgraphics.set_source_rgba(.32,1.,.38,.96);
            mgraphics.ellipse(landingX-landingRadius,landingY-landingRadius,landingRadius*2,landingRadius*2);
            mgraphics.stroke();
            mgraphics.move_to(landingX-landingRadius*.68,landingY);mgraphics.line_to(landingX+landingRadius*.68,landingY);
            mgraphics.move_to(landingX,landingY-landingRadius*.68);mgraphics.line_to(landingX,landingY+landingRadius*.68);
            mgraphics.stroke();
        }
    }

    // Followers first, then the active subgroup leaders 1..4.
    var drawOrder = [];
    for (var follower = swarmCount + 1; follower <= activeVoices; follower++) drawOrder.push(follower);
    for (var leaderId = 1; leaderId <= Math.min(swarmCount, activeVoices); leaderId++) drawOrder.push(leaderId);
    for (var drawIndex = 0; drawIndex < drawOrder.length; drawIndex++) {
        var id = drawOrder[drawIndex];
        if (!positions[id]) continue;
        var px = ox + clamp(positions[id][0], 0, 1) * side;
        var py = oy + clamp(positions[id][1], 0, 1) * side;
        var radius = Math.max(3.5, side * 0.012);

        var leaderColors = [[1.0,0.68,0.05],[0.90,0.15,0.12],[0.00,0.62,0.72],[0.85,0.15,0.70],[0.20,0.70,0.25]];
        var colorIndex = id <= swarmCount ? id : 0;
        var pc = leaderColors[colorIndex];
        mgraphics.set_source_rgba(pc[0], pc[1], pc[2], 1.0);
        mgraphics.ellipse(px-radius, py-radius, radius*2, radius*2);
        mgraphics.fill();
        mgraphics.set_source_rgba(0.20, 0.20, 0.20, 0.9);
        mgraphics.set_line_width(0.75);
        mgraphics.ellipse(px-radius, py-radius, radius*2, radius*2);
        mgraphics.stroke();

        mgraphics.set_font_size(Math.max(7, side * 0.021));
        mgraphics.set_source_rgba(0.12, 0.12, 0.12, 0.92);
        centeredText(String(id), px, py + radius + Math.max(8, side * 0.022));
    }
}

function portalMouse(x,y){var width=box.rect[2]-box.rect[0],height=box.rect[3]-box.rect[1],side=Math.min(width,height),ox=(width-side)*.5,oy=(height-side)*.5;portalX=clamp((x-ox)/side,0,1);portalY=clamp((y-oy)/side,0,1);outlet(0,"portalxy",portalX,portalY);outlet(0,"portalx",portalX);outlet(0,"portaly",portalY);requestDraw();}
function onclick(x,y,but,cmd,shift,capslock,option,ctrl){if(portalMode!==0)portalMouse(x,y);}
function ondrag(x,y,but,cmd,shift,capslock,option,ctrl){if(portalMode!==0&&but)portalMouse(x,y);}
function onresize() { requestDraw(); }
function loadbang() { resetquad(); }
function notifydeleted() { drawTask.cancel(); drawTask.freepeer(); }
