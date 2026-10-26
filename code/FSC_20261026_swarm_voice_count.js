autowatch = 1;
inlets = 2;
outlets = 3;

var current = 0;
var selectedTarget = 0;
var maximum = 50;
var initialized = false;
var tempoMinimum = 0.7;
var tempoMaximum = 1.5;
var gainMinimum = 0.1;
var gainMaximum = 1.0;
var currentMode = 0;
var flightRangeLength = 50;
var flightRangeFirst = 1;
var flightRangeLast = 700;
var movingCount = 0;
var swarmRunning = false;
var swarmDensity = 0;
var swarmGrid = 0;
var swarmCount = 1;
var selectedSwarm = 0;
var swarmDensities = [0, 0, 0, 0, 0];
var swarmGrids = [0, 0, 0, 0, 0];
var orbitTempos = [0,0,0,0,0];
var ringModes = [0,0,0,0,0];
var ringSpreads = [0,0,0,0,0];
var pulseInners=[0,0,0,0,0],pulseOuters=[100,100,100,100,100],pulseTempos=[0,0,0,0,0],pulsePhases=[0,0,0,0,0],pulseTempoSpreads=[0,0,0,0,0];
var snakeStates=[0,0,0,0,0],snakeSpacings=[20,20,20,20,20],snakeDeviations=[0,0,0,0,0],alignments=[0,0,0,0,0];
var escapeStrengths=[50,50,50,50,50],escapeReturns=[2,2,2,2,2];
// Portal is a global swarm state. Keep it here so voices activated later
// inherit exactly the portal that is already visible in the monitor.
var portalMode=0,portalX=0.5,portalY=0.5,portalDirection=0,portalWidth=45,portalSpeed=0.25,portalDeviation=25;
var deliveryQueue = [];
var deliveryTask = new Task(deliverNext, this);
var pendingInitialCount = current;
var initializationTask = new Task(finishInitialization, this);
var pendingEntry = null;
var deliveryPhase = 0;
var voiceActive = [];
// Desired flight controls survive inactivity, including individual overrides.
var voiceFlightSettings = [];
for (var voiceStateIndex = 0; voiceStateIndex <= maximum; voiceStateIndex++) {
    voiceActive[voiceStateIndex] = false;
}

function clampCount(v) {
    v = Math.floor(Number(v));
    return isFinite(v) ? Math.max(0, Math.min(maximum, v)) : null;
}

function sendTarget(n) {
    outlet(0, "target", n);
}

function sendCommand(name, args) {
    outlet(0, [name].concat(args));
}

function disableVoice(n) {
    sendTarget(n);
    outlet(0, "stop");
    outlet(0, "active", 0);
}

function enableVoice(n) {
    sendTarget(n);
    outlet(0, "active", 1);
    // A voice joins the audible swarm with useful musical defaults.
    // Motion remains controlled separately by Moving/Start.
    outlet(0, "gain", 1);
    outlet(0, "loop", 1);
    // Emit the current position and establish a quiet, stationary motion state.
    outlet(0, "stop");
}

function shuffledIntegers(first, last) {
    var values = [];
    for (var value = first; value <= last; value++) values.push(value);
    for (var i = values.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var swap = values[i];
        values[i] = values[j];
        values[j] = swap;
    }
    return values;
}

// Pending setup must survive later Moving, tempo, gain and flight edits.
// Replace only superseded commands for the same voice/parameter; Start and
// Stop describe one shared state. Preserve ordering inside each new payload.
function commandKey(command) {
    if (command.name === "start" || command.name === "stop") return "motion";
    return command.name + (/group$/.test(command.name) ? ":" + command.args[0] : "");
}

function mergeCommands(previous, incoming) {
    var replaced = {}, result = [], i;
    for (i = 0; i < incoming.length; i++) replaced[commandKey(incoming[i])] = true;
    for (i = 0; i < previous.length; i++) {
        if (!replaced[commandKey(previous[i])]) result.push(previous[i]);
    }
    return result.concat(incoming);
}

function queuedEntries() {
    return (pendingEntry ? [pendingEntry] : []).concat(deliveryQueue);
}

function scheduledActive(voice) {
    var active = voiceActive[voice], entries = queuedEntries();
    for (var i = 0; i < entries.length; i++) {
        if (entries[i].voice !== voice) continue;
        for (var j = 0; j < entries[i].commands.length; j++) {
            var command = entries[i].commands[j];
            if (command.name === "active") active = Number(command.args[0]) !== 0;
        }
    }
    return active;
}

function rememberFlightCommands(voice, commands) {
    var saved = voiceFlightSettings[voice] || [];
    for (var i = 0; i < commands.length; i++) {
        var command = commands[i];
        if (!/^(flight|tempo|mode|loop|first|last)$/.test(command.name)) continue;
        if (!command.args.length || !isFinite(Number(command.args[0]))) continue;
        saved = mergeCommands(saved, [{name:command.name, args:command.args.slice(0)}]);
    }
    voiceFlightSettings[voice] = saved;
}

function beginDelivery(entries) {
    if (!entries.length) return;
    for (var e = 0; e < entries.length; e++) rememberFlightCommands(entries[e].voice, entries[e].commands);
    var all = queuedEntries().concat(entries), merged = [], positions = {};
    for (var i = 0; i < all.length; i++) {
        var entry = all[i], key = String(entry.voice);
        if (typeof positions[key] === "undefined") {
            positions[key] = merged.length;
            merged.push({voice:entry.voice, commands:entry.commands.slice(0)});
        } else {
            var existing = merged[positions[key]];
            existing.commands = mergeCommands(existing.commands, entry.commands);
        }
    }
    deliveryTask.cancel();
    deliveryQueue = merged;
    pendingEntry = null;
    deliveryPhase = 0;
    // Install target and send payload on separate scheduler turns.
    deliveryTask.schedule(5);
}

function deliverNext() {
    if (deliveryPhase === 0) {
        if (!deliveryQueue.length) {
            sendTarget(selectedTarget);
            return;
        }
        pendingEntry = deliveryQueue.shift();
        // Give poly~ one scheduler turn to install the new target before
        // the payload is sent. Sending both from one JS call proved unsafe.
        sendTarget(pendingEntry.voice);
        deliveryPhase = 1;
        deliveryTask.schedule(5);
        return;
    }

    for (var commandIndex = 0; commandIndex < pendingEntry.commands.length; commandIndex++) {
        var command = pendingEntry.commands[commandIndex];
        sendCommand(command.name, command.args);
        // Track only commands that have actually reached the selected poly voice.
        // A cancelled queue therefore cannot make our bookkeeping lie.
        if (command.name === "active" && command.args.length) {
            voiceActive[pendingEntry.voice] = Number(command.args[0]) !== 0;
        }
    }
    pendingEntry = null;
    deliveryPhase = 0;
    deliveryTask.schedule(5);
}

function reportMoving() { outlet(1, "set", movingCount); }

function applyMovement() {
    // A movement edit may interrupt an unfinished activation queue. Rebuild
    // both activation and movement from commands actually delivered to poly~.
    if (initialized) setCount(current);
}


function formationStateCommands() {
    var commands = [{name:"swarms", args:[swarmCount]}];
    for (var g=1; g<=4; g++) {
        commands.push({name:"densitygroup", args:[g, swarmDensities[g]]});
        commands.push({name:"gridgroup", args:[g, swarmGrids[g]]});
        commands.push({name:"orbitgroup", args:[g, orbitTempos[g]]});
        commands.push({name:"ringmodegroup", args:[g, ringModes[g]]});
        commands.push({name:"orbitspreadgroup", args:[g, ringSpreads[g]]});
        commands.push({name:"pulseinnergroup", args:[g,pulseInners[g]]});commands.push({name:"pulseoutergroup", args:[g,pulseOuters[g]]});commands.push({name:"pulsetempogroup", args:[g,pulseTempos[g]]});commands.push({name:"pulsephasegroup", args:[g,pulsePhases[g]]});commands.push({name:"pulsetempospreadgroup", args:[g,pulseTempoSpreads[g]]});commands.push({name:"snakegroup",args:[g,snakeStates[g]]});commands.push({name:"snakespacinggroup",args:[g,snakeSpacings[g]]});commands.push({name:"snakedeviationgroup",args:[g,snakeDeviations[g]]});commands.push({name:"alignmentgroup",args:[g,alignments[g]]});commands.push({name:"escapestrengthgroup",args:[g,escapeStrengths[g]]});commands.push({name:"escapereturngroup",args:[g,escapeReturns[g]]});
    }
    return commands;
}

function restoreDeliveryTarget() {
    sendTarget(deliveryPhase === 1 && pendingEntry ? pendingEntry.voice : selectedTarget);
}

function formationUpdateEntries(commands) {
    // Formation state is global and safe to broadcast. Sending it through the
    // per-voice delivery queue made 50 voices change one after another and a
    // new formation command could cancel pending Start/Stop work.
    sendTarget(0);
    for (var i = 0; i < commands.length; i++) {
        sendCommand(commands[i].name, commands[i].args);
    }
    restoreDeliveryTarget();
}

function finishInitialization() {
    if (initialized) return;
    initialized = true;
    // Preserve edits made during cold loading and use the same reconciliation
    // as every later count/movement edit. Never reset the requested motion here.
    setCount(pendingInitialCount);
}

function setCount(v) {
    v = clampCount(v);
    if (v === null) return;

    if (!initialized) {
        pendingInitialCount = v;
        initializationTask.cancel();
        initializationTask.schedule(250);
        return;
    }

    // Reconcile actual and queued activation, retaining unfinished setup and
    // replacing stale movement decisions with the latest requested state.
    current = v;
    movingCount = Math.min(movingCount, current);
    if (movingCount === 0) swarmRunning = false;
    reportMoving();

    var activationEntries = [];
    for (var voice = 1; voice <= maximum; voice++) {
        var shouldBeActive = voice <= current;
        if (shouldBeActive && !scheduledActive(voice)) {
            activationEntries.push({voice:voice, commands:[
                {name:"loop", args:[1]},
                {name:"density", args:[swarmDensity]},
                {name:"grid", args:[swarmGrid]},
                {name:"gridvoices", args:[current]},
                {name:"swarms", args:[swarmCount]},
                {name:"densitygroup", args:[1,swarmDensities[1]]}, {name:"densitygroup", args:[2,swarmDensities[2]]}, {name:"densitygroup", args:[3,swarmDensities[3]]}, {name:"densitygroup", args:[4,swarmDensities[4]]},
                {name:"gridgroup", args:[1,swarmGrids[1]]}, {name:"gridgroup", args:[2,swarmGrids[2]]}, {name:"gridgroup", args:[3,swarmGrids[3]]}, {name:"gridgroup", args:[4,swarmGrids[4]]},
                {name:"orbitgroup", args:[1,orbitTempos[1]]}, {name:"orbitgroup", args:[2,orbitTempos[2]]}, {name:"orbitgroup", args:[3,orbitTempos[3]]}, {name:"orbitgroup", args:[4,orbitTempos[4]]},
                {name:"ringmodegroup", args:[1,ringModes[1]]}, {name:"ringmodegroup", args:[2,ringModes[2]]}, {name:"ringmodegroup", args:[3,ringModes[3]]}, {name:"ringmodegroup", args:[4,ringModes[4]]},
                {name:"orbitspreadgroup", args:[1,ringSpreads[1]]}, {name:"orbitspreadgroup", args:[2,ringSpreads[2]]}, {name:"orbitspreadgroup", args:[3,ringSpreads[3]]}, {name:"orbitspreadgroup", args:[4,ringSpreads[4]]},
                {name:"pulseinnergroup",args:[1,pulseInners[1]]},{name:"pulseinnergroup",args:[2,pulseInners[2]]},{name:"pulseinnergroup",args:[3,pulseInners[3]]},{name:"pulseinnergroup",args:[4,pulseInners[4]]},
                {name:"pulseoutergroup",args:[1,pulseOuters[1]]},{name:"pulseoutergroup",args:[2,pulseOuters[2]]},{name:"pulseoutergroup",args:[3,pulseOuters[3]]},{name:"pulseoutergroup",args:[4,pulseOuters[4]]},
                {name:"pulsetempogroup",args:[1,pulseTempos[1]]},{name:"pulsetempogroup",args:[2,pulseTempos[2]]},{name:"pulsetempogroup",args:[3,pulseTempos[3]]},{name:"pulsetempogroup",args:[4,pulseTempos[4]]},
                {name:"pulsephasegroup",args:[1,pulsePhases[1]]},{name:"pulsephasegroup",args:[2,pulsePhases[2]]},{name:"pulsephasegroup",args:[3,pulsePhases[3]]},{name:"pulsephasegroup",args:[4,pulsePhases[4]]},
                {name:"pulsetempospreadgroup",args:[1,pulseTempoSpreads[1]]},{name:"pulsetempospreadgroup",args:[2,pulseTempoSpreads[2]]},{name:"pulsetempospreadgroup",args:[3,pulseTempoSpreads[3]]},{name:"pulsetempospreadgroup",args:[4,pulseTempoSpreads[4]]},
                {name:"snakegroup",args:[1,snakeStates[1]]},{name:"snakegroup",args:[2,snakeStates[2]]},{name:"snakegroup",args:[3,snakeStates[3]]},{name:"snakegroup",args:[4,snakeStates[4]]},
                {name:"snakespacinggroup",args:[1,snakeSpacings[1]]},{name:"snakespacinggroup",args:[2,snakeSpacings[2]]},{name:"snakespacinggroup",args:[3,snakeSpacings[3]]},{name:"snakespacinggroup",args:[4,snakeSpacings[4]]},
                {name:"snakedeviationgroup",args:[1,snakeDeviations[1]]},{name:"snakedeviationgroup",args:[2,snakeDeviations[2]]},{name:"snakedeviationgroup",args:[3,snakeDeviations[3]]},{name:"snakedeviationgroup",args:[4,snakeDeviations[4]]},
                {name:"alignmentgroup",args:[1,alignments[1]]},{name:"alignmentgroup",args:[2,alignments[2]]},{name:"alignmentgroup",args:[3,alignments[3]]},{name:"alignmentgroup",args:[4,alignments[4]]},
                {name:"escapestrengthgroup",args:[1,escapeStrengths[1]]},{name:"escapestrengthgroup",args:[2,escapeStrengths[2]]},{name:"escapestrengthgroup",args:[3,escapeStrengths[3]]},{name:"escapestrengthgroup",args:[4,escapeStrengths[4]]},
                {name:"escapereturngroup",args:[1,escapeReturns[1]]},{name:"escapereturngroup",args:[2,escapeReturns[2]]},{name:"escapereturngroup",args:[3,escapeReturns[3]]},{name:"escapereturngroup",args:[4,escapeReturns[4]]},
                {name:"gain",args:[0]},{name:"portalmode",args:[portalMode]},{name:"portalx",args:[portalX]},{name:"portaly",args:[portalY]},{name:"portaldirection",args:[portalDirection]},{name:"portalwidth",args:[portalWidth]},{name:"portalspeed",args:[portalSpeed]},{name:"portaldeviation",args:[portalDeviation]},{name:"portalorigin",args:[1]},{name:"active",args:[1]},{name:"gain",args:[1]}
            ].concat(voiceFlightSettings[voice] || [], [
                {name:(swarmRunning && voice <= movingCount) ? "start" : "stop", args:[]}
            ])});
        } else if (shouldBeActive) {
            // A changed swarm size gives every remaining voice a new, centered grid slot.
            var existingCommands = [
                {name:"gridvoices", args:[current]}, {name:"swarms", args:[swarmCount]}
            ];
            var shouldMove = swarmRunning && voice <= movingCount;
            existingCommands.push({name:shouldMove ? "start" : "stop", args:[]});
            activationEntries.push({voice:voice, commands:existingCommands});
        } else {
            activationEntries.push({voice:voice, commands:[
                {name:"stop", args:[]},
                {name:"active", args:[0]}
            ]});
        }
    }

    if (activationEntries.length) beginDelivery(activationEntries);
    else sendTarget(selectedTarget);
}
function msg_int(v) {
    if (inlet === 0) setCount(v);
}

function anything() {
    var args = arrayfromargs(arguments);

    if (inlet === 0) {
        if (messagename === "count" && args.length) setCount(args[0]);
        return;
    }

    if (messagename === "target") {
        var n = Math.floor(Number(args[0]));
        if (isFinite(n)) selectedTarget = Math.max(0, Math.min(maximum, n));
        return;
    }

    if ((messagename === "portalmode" || messagename === "portalx" || messagename === "portaly" || messagename === "portaldirection" || messagename === "portalwidth" || messagename === "portalspeed" || messagename === "portaldeviation") && args.length) {
        var portalValue=Number(args[0]); if(!isFinite(portalValue)) return;
        if(messagename==="portalmode") portalMode=Math.floor(Math.max(-1,Math.min(1,portalValue)));
        else if(messagename==="portalx") portalX=Math.max(0,Math.min(1,portalValue));
        else if(messagename==="portaly") portalY=Math.max(0,Math.min(1,portalValue));
        else if(messagename==="portaldirection") portalDirection=((portalValue%360)+360)%360;
        else if(messagename==="portalwidth") portalWidth=Math.max(0,Math.min(360,portalValue));
        else if(messagename==="portalspeed") portalSpeed=Math.max(0,Math.min(20,portalValue));
        else portalDeviation=Math.max(0,Math.min(100,portalValue));
        // target 0 reaches all loaded poly voices, including currently muted
        // voices. They therefore retain the portal when activated later.
        formationUpdateEntries([{name:messagename,args:[messagename==="portalmode"?portalMode:messagename==="portalx"?portalX:messagename==="portaly"?portalY:messagename==="portaldirection"?portalDirection:messagename==="portalwidth"?portalWidth:messagename==="portalspeed"?portalSpeed:portalDeviation]}]);
        return;
    }

    if (messagename === "moving" && args.length) {
        var m=Math.floor(Number(args[0])); if(!isFinite(m)) return;
        var availableCount = initialized ? current : pendingInitialCount;
        movingCount=Math.max(0,Math.min(availableCount,m)); reportMoving();
        // Moving is itself the motion control: values above zero run that many
        // voices, zero stops the whole active swarm.
        swarmRunning = movingCount > 0;
        applyMovement(); return;
    }
    if (messagename === "start" && selectedTarget === 0) {
        swarmRunning=true; applyMovement(); return;
    }
    if (messagename === "stop" && selectedTarget === 0) {
        swarmRunning=false;
        applyMovement(); return;
    }

    if (messagename === "swarms" && args.length) {
        var sc = Math.floor(Number(args[0]));
        if (!isFinite(sc)) return;
        swarmCount = Math.max(1, Math.min(4, sc));
        if (selectedSwarm > swarmCount) selectedSwarm = swarmCount;
        outlet(2, "swarms", swarmCount);
        formationUpdateEntries([{name:"swarms",args:[swarmCount]}]);
        return;
    }

    if (messagename === "swarmtarget" && args.length) {
        var st = Math.floor(Number(args[0]));
        if (!isFinite(st)) return;
        selectedSwarm = Math.max(0, Math.min(4, st));
        var shown = selectedSwarm === 0 ? 1 : selectedSwarm;
        outlet(2, "setdensity", swarmDensities[shown]);
        outlet(2, "setgrid", swarmGrids[shown]);
        outlet(2, "setorbit", orbitTempos[shown]);
        outlet(2, "setringmode", ringModes[shown]);
        outlet(2, "setorbitspread", ringSpreads[shown]);
        outlet(2,"setpulseinner",pulseInners[shown]);outlet(2,"setpulseouter",pulseOuters[shown]);outlet(2,"setpulsetempo",pulseTempos[shown]);outlet(2,"setpulsephase",pulsePhases[shown]);outlet(2,"setpulsetempospread",pulseTempoSpreads[shown]);outlet(2,"setsnake",snakeStates[shown]);outlet(2,"setsnakespacing",snakeSpacings[shown]);outlet(2,"setsnakedeviation",snakeDeviations[shown]);outlet(2,"setalignment",alignments[shown]);outlet(2,"setescapestrength",escapeStrengths[shown]);outlet(2,"setescapereturn",escapeReturns[shown]);
        return;
    }

    if ((messagename === "density" || messagename === "grid") && args.length) {
        var val = Math.max(0, Math.min(100, Number(args[0])));
        if (!isFinite(val)) return;
        var commands=[];
        if (selectedSwarm === 0) {
            for (var sg=1; sg<=4; sg++) {
                if (messagename === "density") swarmDensities[sg]=val; else swarmGrids[sg]=val;
                commands.push({name:messagename === "density" ? "densitygroup" : "gridgroup", args:[sg,val]});
            }
        } else {
            if (messagename === "density") swarmDensities[selectedSwarm]=val; else swarmGrids[selectedSwarm]=val;
            commands.push({name:messagename === "density" ? "densitygroup" : "gridgroup", args:[selectedSwarm,val]});
        }
        formationUpdateEntries(commands);
        return;
    }

    if((messagename==="escapestrength"||messagename==="escapereturn")&&args.length){var ev=Number(args[0]);if(!isFinite(ev))return;ev=messagename==="escapestrength"?Math.max(0,Math.min(100,ev)):Math.max(.2,Math.min(10,ev));var ea=messagename==="escapestrength"?escapeStrengths:escapeReturns,en=messagename==="escapestrength"?"escapestrengthgroup":"escapereturngroup",ec=[];if(selectedSwarm===0){for(var eg=1;eg<=4;eg++){ea[eg]=ev;ec.push({name:en,args:[eg,ev]});}}else{ea[selectedSwarm]=ev;ec.push({name:en,args:[selectedSwarm,ev]});}formationUpdateEntries(ec);return;}

    if(messagename==="escape"){var token=new Date().getTime(),xc=[];if(selectedSwarm===0){for(var xg=1;xg<=swarmCount;xg++)xc.push({name:"escapegroup",args:[xg,token]});}else xc.push({name:"escapegroup",args:[selectedSwarm,token]});formationUpdateEntries(xc);return;}

    if(messagename==="alignment"&&args.length){var av=Math.max(0,Math.min(100,Number(args[0])));if(!isFinite(av))return;var ac=[];if(selectedSwarm===0){for(var ag=1;ag<=4;ag++){alignments[ag]=av;ac.push({name:"alignmentgroup",args:[ag,av]});}}else{alignments[selectedSwarm]=av;ac.push({name:"alignmentgroup",args:[selectedSwarm,av]});}formationUpdateEntries(ac);return;}

    if ((messagename==="snake"||messagename==="snakespacing"||messagename==="snakedeviation")&&args.length){var sv=Number(args[0]);if(!isFinite(sv))return;sv=messagename==="snake"?(sv!==0?1:0):Math.max(0,Math.min(100,sv));var sa=messagename==="snake"?snakeStates:(messagename==="snakespacing"?snakeSpacings:snakeDeviations),sn=messagename==="snake"?"snakegroup":(messagename==="snakespacing"?"snakespacinggroup":"snakedeviationgroup"),sc=[];if(selectedSwarm===0){for(var sgx=1;sgx<=4;sgx++){sa[sgx]=sv;sc.push({name:sn,args:[sgx,sv]});}}else{sa[selectedSwarm]=sv;sc.push({name:sn,args:[selectedSwarm,sv]});}formationUpdateEntries(sc);return;}

    if ((messagename==="pulseinner"||messagename==="pulseouter"||messagename==="pulsetempo"||messagename==="pulsephase"||messagename==="pulsetempospread")&&args.length){
        var pv=Number(args[0]);if(!isFinite(pv))return;pv=messagename==="pulsetempo"?Math.max(0,Math.min(10,pv)):Math.max(0,Math.min(100,pv));
        var pa=messagename==="pulseinner"?pulseInners:messagename==="pulseouter"?pulseOuters:messagename==="pulsetempo"?pulseTempos:messagename==="pulsephase"?pulsePhases:pulseTempoSpreads;
        var pn=messagename==="pulseinner"?"pulseinnergroup":messagename==="pulseouter"?"pulseoutergroup":messagename==="pulsetempo"?"pulsetempogroup":messagename==="pulsephase"?"pulsephasegroup":"pulsetempospreadgroup",pc=[];
        var syncStamp=(messagename==="pulsetempospread"&&pv===0)?(new Date().getTime()):null;
        if(selectedSwarm===0){for(var pg=1;pg<=4;pg++){pa[pg]=pv;pc.push({name:pn,args:syncStamp===null?[pg,pv]:[pg,pv,syncStamp]});}}else{pa[selectedSwarm]=pv;pc.push({name:pn,args:syncStamp===null?[selectedSwarm,pv]:[selectedSwarm,pv,syncStamp]});}formationUpdateEntries(pc);return;
    }

    if (messagename === "orbitspread" && args.length) {
        var os=Math.max(0,Math.min(100,Number(args[0]))); if(!isFinite(os)) return;
        var osc=[];
        if(selectedSwarm===0){for(var osg=1;osg<=4;osg++){ringSpreads[osg]=os;osc.push({name:"orbitspreadgroup",args:[osg,os]});}}
        else {ringSpreads[selectedSwarm]=os;osc.push({name:"orbitspreadgroup",args:[selectedSwarm,os]});}
        formationUpdateEntries(osc); return;
    }

    if ((messagename === "orbit" || messagename === "ringmode") && args.length) {
        var ov=Number(args[0]); if(!isFinite(ov)) return;
        ov=messagename === "orbit" ? Math.max(-10,Math.min(10,ov)) : Math.floor(Math.max(0,Math.min(2,ov)));
        var oc=[];
        if(selectedSwarm===0){for(var og=1;og<=4;og++){if(messagename==="orbit")orbitTempos[og]=ov;else ringModes[og]=ov;oc.push({name:messagename==="orbit"?"orbitgroup":"ringmodegroup",args:[og,ov]});}}
        else {if(messagename==="orbit")orbitTempos[selectedSwarm]=ov;else ringModes[selectedSwarm]=ov;oc.push({name:messagename==="orbit"?"orbitgroup":"ringmodegroup",args:[selectedSwarm,ov]});}
        formationUpdateEntries(oc); return;
    }

    // Remember the user-defined Mode-1 bounds as part of the global flight
    // material state. The messages still fall through and reach the voices.
    if (selectedTarget === 0 && (messagename === "first" || messagename === "last") && args.length) {
        var rangeBoundary = Math.floor(Number(args[0]));
        if (isFinite(rangeBoundary)) {
            rangeBoundary = Math.max(1, Math.min(700, rangeBoundary));
            if (messagename === "first") flightRangeFirst = rangeBoundary;
            else flightRangeLast = rangeBoundary;
        }
    }

    if (messagename === "flightrangelength" && args.length) {
        var rangeLength = Math.floor(Number(args[0]));
        if (isFinite(rangeLength)) flightRangeLength = Math.max(2, Math.min(700, rangeLength));
        return;
    }

    if (messagename === "randomizeflights") {
        var poolLow = 1;
        var poolHigh = 700;
        var flightEntries = [];
        if (currentMode === 0) {
            var shuffledFlights = shuffledIntegers(poolLow, poolHigh);
            for (var singleVoice = 1; singleVoice <= current; singleVoice++) {
                var chosenFlight = shuffledFlights[singleVoice - 1];
                flightEntries.push({voice:singleVoice, commands:[
                    {name:"flight", args:[chosenFlight]},
                    {name:(swarmRunning && singleVoice <= movingCount) ? "start" : "stop", args:[]}
                ]});
            }
        } else if (currentMode === 1) {
            // Mode 1 randomizes only inside the chosen First–Last window.
            // Example: First 20, Last 40, length 10 => starts 20..31 and
            // therefore ranges 20–29 through 31–40, never outside 20..40.
            poolLow = Math.min(flightRangeFirst, flightRangeLast);
            poolHigh = Math.max(flightRangeFirst, flightRangeLast);
            var available = poolHigh - poolLow + 1;
            if (available < 2) {
                sendTarget(selectedTarget);
                return;
            }
            var length = Math.max(2, Math.min(flightRangeLength, available));
            var latestStart = poolHigh - length + 1;
            var shuffledStarts = shuffledIntegers(poolLow, latestStart);
            for (var rangeVoice = 1; rangeVoice <= current; rangeVoice++) {
                var rangeFirst = shuffledStarts[(rangeVoice - 1) % shuffledStarts.length];
                var rangeLast = rangeFirst + length - 1;
                flightEntries.push({voice:rangeVoice, commands:[
                    {name:"first", args:[rangeFirst]},
                    {name:"last", args:[rangeLast]},
                    {name:(swarmRunning && rangeVoice <= movingCount) ? "start" : "stop", args:[]}
                ]});
            }
        }
        beginDelivery(flightEntries);
        return;
    }

    if (selectedTarget === 0 && messagename === "mode" && args.length) {
        var newMode = Math.floor(Number(args[0]));
        if (isFinite(newMode)) currentMode = Math.max(0, Math.min(2, newMode));
    }

    if (messagename === "tempomin" && args.length) {
        var newMinimum = Number(args[0]);
        if (isFinite(newMinimum)) tempoMinimum = Math.max(0, newMinimum);
        return;
    }

    if (messagename === "tempomax" && args.length) {
        var newMaximum = Number(args[0]);
        if (isFinite(newMaximum)) tempoMaximum = Math.max(0, newMaximum);
        return;
    }

    if (messagename === "gainmin" && args.length) {
        var newGainMinimum=Number(args[0]);
        if(isFinite(newGainMinimum)) gainMinimum=Math.max(0.1,Math.min(1,newGainMinimum));
        return;
    }

    if (messagename === "gainmax" && args.length) {
        var newGainMaximum=Number(args[0]);
        if(isFinite(newGainMaximum)) gainMaximum=Math.max(0.1,Math.min(1,newGainMaximum));
        return;
    }

    if (messagename === "randomizegain") {
        var gainLow=Math.min(gainMinimum,gainMaximum),gainHigh=Math.max(gainMinimum,gainMaximum),gainValues=[];
        for(var gainVoice=1;gainVoice<=current;gainVoice++) gainValues.push(gainLow+((gainVoice-1+Math.random())/current)*(gainHigh-gainLow));
        for(var gainShuffle=gainValues.length-1;gainShuffle>0;gainShuffle--){var gainSwapIndex=Math.floor(Math.random()*(gainShuffle+1)),gainSwap=gainValues[gainShuffle];gainValues[gainShuffle]=gainValues[gainSwapIndex];gainValues[gainSwapIndex]=gainSwap;}
        var gainEntries=[];for(gainVoice=1;gainVoice<=current;gainVoice++)gainEntries.push({voice:gainVoice,commands:[{name:"gain",args:[gainValues[gainVoice-1]]}]});
        beginDelivery(gainEntries);return;
    }

    if (messagename === "randomizetempo") {
        var low = Math.min(tempoMinimum, tempoMaximum);
        var high = Math.max(tempoMinimum, tempoMaximum);
        var tempoValues = [];
        for (var tempoVoice = 1; tempoVoice <= current; tempoVoice++) {
            // Stratified random values guarantee audible differences while
            // preserving randomness inside the selected interval.
            tempoValues.push(low + ((tempoVoice - 1 + Math.random()) / current) * (high - low));
        }
        for (var shuffleIndex = tempoValues.length - 1; shuffleIndex > 0; shuffleIndex--) {
            var tempoSwapIndex = Math.floor(Math.random() * (shuffleIndex + 1));
            var tempoSwap = tempoValues[shuffleIndex];
            tempoValues[shuffleIndex] = tempoValues[tempoSwapIndex];
            tempoValues[tempoSwapIndex] = tempoSwap;
        }
        var tempoEntries = [];
        for (tempoVoice = 1; tempoVoice <= current; tempoVoice++) {
            tempoEntries.push({voice:tempoVoice, commands:[{name:"tempo", args:[tempoValues[tempoVoice-1]]}]});
        }
        beginDelivery(tempoEntries);
        return;
    }

    // Tempo follows the selected subswarm when no individual voice target is set.
    // Voice-to-swarm assignment must match FSC_20261026_swarm_attractor.js: ((voice - 1) % swarmCount) + 1.
    if (messagename === "tempo" && selectedTarget === 0 && selectedSwarm > 0) {
        var subgroupTempo = Number(args[0]);
        if (!isFinite(subgroupTempo)) return;
        for (var futureVoice = 1; futureVoice <= maximum; futureVoice++) {
            if (((futureVoice - 1) % swarmCount) + 1 === selectedSwarm)
                rememberFlightCommands(futureVoice, [{name:"tempo", args:args}]);
        }
        var subgroupTempoEntries = [];
        for (var subgroupVoice = 1; subgroupVoice <= current; subgroupVoice++) {
            var subgroup = ((subgroupVoice - 1) % swarmCount) + 1;
            if (subgroup === selectedSwarm) {
                subgroupTempoEntries.push({voice:subgroupVoice, commands:[{name:"tempo", args:[subgroupTempo]}]});
            }
        }
        if (subgroupTempoEntries.length) beginDelivery(subgroupTempoEntries);
        else sendTarget(selectedTarget);
        return;
    }

    // Route ordinary controls through the same queue. A synchronous broadcast
    // here could steal poly~'s target between a deferred target and its payload.
    // A global edit also defines the state of voices enabled later. Targeted
    // edits affect only their voice; subsequent global edits supersede them.
    var rememberFrom = selectedTarget || 1;
    var rememberTo = selectedTarget || maximum;
    for (var rememberedVoice = rememberFrom; rememberedVoice <= rememberTo; rememberedVoice++)
        rememberFlightCommands(rememberedVoice, [{name:messagename, args:args}]);
    var controlEntries = [];
    if (selectedTarget === 0) {
        var controlCount = initialized ? current : pendingInitialCount;
        for (var voice = 1; voice <= controlCount; voice++) {
            controlEntries.push({voice:voice, commands:[{name:messagename, args:args}]});
        }
    } else {
        controlEntries.push({voice:selectedTarget, commands:[{name:messagename, args:args}]});
    }
    beginDelivery(controlEntries);
}

function notifydeleted() {
    initializationTask.cancel();
    initializationTask.freepeer();
    deliveryTask.cancel();
    deliveryTask.freepeer();
}
