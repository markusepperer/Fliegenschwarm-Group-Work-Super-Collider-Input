autowatch=1; inlets=57; outlets=3;
var namespace=(jsarguments.length>1)?String(jsarguments[1]):"default";
var leaders=new Global("FSC_20261026_MS_SwarmLeaders_"+namespace);
var voiceId=0, voiceCount=1, swarmCount=1, oldSwarmCount=1;
var densities=[0,0,0,0,0], grids=[0,0,0,0,0];
var formShapes=[0,0,0,0,0];
var densityCurrent=[0,0,0,0,0], gridCurrent=[0,0,0,0,0], formShapeCurrent=[0,0,0,0,0],formShapeBefore=[0,0,0,0,0],formShapeBiasX=[0,0,0,0,0],formShapeBiasY=[0,0,0,0,0], morphTimes=[0,0,0,0,0];
var orbitTempos=[0,0,0,0,0], ringModes=[0,0,0,0,0], ringSpreads=[0,0,0,0,0];
var pulseInner=[0,0,0,0,0],pulseOuter=[100,100,100,100,100],pulseTempo=[0,0,0,0,0],pulsePhaseSpread=[0,0,0,0,0],pulseTempoSpread=[0,0,0,0,0];
var pulseInnerNow=[0,0,0,0,0],pulseOuterNow=[100,100,100,100,100],pulsePhaseNow=[0,0,0,0,0],pulseTempoSpreadNow=[0,0,0,0,0];
var pulsePhaseState=[0,0,0,0,0],pulseSpeedNow=[0,0,0,0,0],pulseActiveNow=[0,0,0,0,0],pulseTimes=[0,0,0,0,0];
var pulseSyncEpoch=[0,0,0,0,0],pulseSyncStart=[0,0,0,0,0];
var snakeEnabled=[0,0,0,0,0],snakeSpacing=[20,20,20,20,20],snakeSpacingSound=[20,20,20,20,20],snakeDeviation=[0,0,0,0,0],snakeDeviationSpatial=[0,0,0,0,0],snakeDeviationSound=[0,0,0,0,0],snakeMix=[0,0,0,0,0],snakeTimes=[0,0,0,0,0];
var historySize=1024,lastLeaderGroup=0;
var alignmentTarget=[0,0,0,0,0],alignmentSpatial=[0,0,0,0,0],alignmentSound=[0,0,0,0,0],alignmentTimes=[0,0,0,0,0];
var alignmentOffsetX=[0,0,0,0,0],alignmentOffsetY=[0,0,0,0,0],alignmentCapture=[0,0,0,0,0];
var escapeStrength=[50,50,50,50,50],escapeReturn=[2,2,2,2,2],escapeStart=[0,0,0,0,0],escapePending=[0,0,0,0,0],escapeDX=[0,0,0,0,0],escapeDY=[0,0,0,0,0];
var escapeAttack=[.12,.12,.12,.12,.12],escapeDuration=[2,2,2,2,2];
var waveModes=[0,0,0,0,0],waveTypes=[0,0,0,0,0],waveRuns=[0,0,0,0,0];
var waveAmplitudes=[25,25,25,25,25],waveLengths=[50,50,50,50,50],waveSpeeds=[.2,.2,.2,.2,.2],waveWidths=[20,20,20,20,20];
var wavePhase=[0,0,0,0,0],waveElapsed=[0,0,0,0,0],waveTimes=[0,0,0,0,0];
var waveRunMix=[0,0,0,0,0];
var waveClock=new Global("FSC_20261026_MS_WaveClock_"+namespace);
var waveRawX=0,waveRawY=0,waveRawReady=0;
var inputX=.5,inputY=.5,inputReady=0;
// Collective Landing is a primary movement mode. Normal swarm motion keeps
// running in the background and is restored when the mode is switched off.
var landingClock=new Global("FSC_20261026_MS_LandingClock_"+namespace);
var landingEnabled=0,landingPointCount=1,landingCycleSeconds=10,landingStartWindow=0,landingEndWindow=0;
var landingMix=0,landingMixTime=0,landingMixFrom=0,landingMixTarget=0,landingMixStart=0,landingLocalCycle=-1,landingFromX=.5,landingFromY=.5,landingLastX=.5,landingLastY=.5;
var LANDING_TRANSITION_MS=1000;
var landingSeenEpoch=0,landingCycleStart=0,landingLocalSeed=1,landingLatchedPoints=1,landingLatchedDuration=10,landingLatchedStart=0,landingLatchedEnd=0,landingLatchedDeviation=25;
var landingDepartTime=0,landingArriveTime=0,landingTargetX=.5,landingTargetY=.5;
var landingDeviationCurrent=25;
var landingNextOpportunity=0;
var landingTargetGeneration=0,landingTargetCache={};
// Decentralized flocking uses the most recent state published by every voice.
// Each existing subswarm forms its own neighbourhood; there is no leader.
var flockState=new Global("FSC_20261026_MS_FlockState_"+namespace);
var flockingTarget=0,flockNeighborCount=6,flockSeparation=35;
var flockPartnerIds=[],flockPartnerUntil=0,flockPartnerK=0;
var flockSpatialMix=0,flockSoundMix=0,flockX=.5,flockY=.5,flockVX=0,flockVY=0,flockBaseX=.5,flockBaseY=.5,flockOffsetX=0,flockOffsetY=0,flockSoundOffsetX=0,flockSoundOffsetY=0,flockTime=0,flockReady=0;
// Flow translates the already organised swarm. Uniform and Counter wrap at
// opposite borders; Mirror emits in both directions from a rotatable axis.
var flowClock=new Global("FSC_20261026_MS_FlowClock_"+namespace);
// Tempo 1 follows the natural order of magnitude of the measured tracks.
// The 0..5 control therefore spans 0..1 normalized field lengths per second.
var FLOW_SPEED_UNIT=.2;
var flowAmount=0,flowMode=0,flowDirection=0,flowSpeed=.2,flowLayers=2,flowCenter=.5,flowOffset=0;
var flowMix=0,flowSoundMix=0,flowTime=0,flowEngaged=0,flowLatchedMode=-1,flowLatchedLayers=0,flowLatchedDirection=0,flowStartX=0,flowStartY=0,flowStartDistance=0,flowAnchorX=.5,flowAnchorY=.5,flowLayerIndex=0,flowMirrorAlong=0,flowMirrorSign=1,flowMirrorStartDistance=0,flowLastX=.5,flowLastY=.5,flowSoundX=.5,flowSoundY=.5,flowSoundBaseX=.5,flowSoundBaseY=.5,flowSoundReady=0,flowCycleX=0,flowCycleY=0,flowMirrorCycle=0,flowStructureRevision=0,flowSeenStructureRevision=-1;
var flowBaseX=.5,flowBaseY=.5,flowBaseGroup=0,flowBaseReady=0,flowLayoutDensity=0,flowLayoutGrid=0,flowLayoutTime=0,flowMirrorPairNorm=0,flowMirrorSpan=.8;
var flowOriginGeneration=-1;
var flowSpatialX=.5,flowSpatialY=.5,flowSpatialBaseX=.5,flowSpatialBaseY=.5,flowSpatialRawX=.5,flowSpatialRawY=.5,flowSpatialReady=0;
var flowCounterTransition=0,flowCounterTransitionPending=0,flowCounterOffsetX=0,flowCounterOffsetY=0,flowCounterRawX=.5,flowCounterRawY=.5;
var flowOffsetSoundX=0,flowOffsetSoundY=0,flowOffsetSoundReady=0;
// Portal is a standalone spatial stream. mode: -1 sink, 0 off, 1 source.
var portalMode=0,portalX=.5,portalY=.5,portalDirection=0,portalWidth=45,portalSpeed=.25,portalDeviation=25;
var portalMix=0,portalMixTime=0,portalLastTime=0,portalPhase=0,portalCycle=-1,portalAngleOffset=0,portalLatchedAngle=0,portalLatchedX=.5,portalLatchedY=.5,portalTravelDistance=.5,portalFunnel=.18;
var portalModeWeights=[0,1,0],portalModeFromWeights=[0,1,0],portalModeTargetWeights=[0,1,0],portalModeTransitionStart=0;
var PORTAL_MODE_TRANSITION_MS=1000;
var portalSoundX=.5,portalSoundY=.5,portalSoundTime=0,portalSoundReady=0;
// All voices on one formation ring use the same continuous phase and speed.
// This keeps the formation coherent while tempo, direction and spread change.
var orbitClock=new Global("FSC_20261026_MS_OrbitClock_"+namespace);
var ORBIT_SLEW_SECONDS=1.5;
var lastX=0.5,lastY=0.5,lastSoundX=0.5,lastSoundY=0.5;
var transitionX=0.5,transitionY=0.5,transitionSoundX=0.5,transitionSoundY=0.5,transitionStart=0,transitionMs=500;
function clamp(v,a,b){return Math.max(a,Math.min(b,Number(v)));} function now(){return new Date().getTime();}
function portalModeIndex(mode){return mode<0?0:(mode>0?2:1);}
function updatePortalModeTransition(t){if(!portalModeTransitionStart){portalMix=portalModeWeights[0]+portalModeWeights[2];return;}var u=clamp((t-portalModeTransitionStart)/PORTAL_MODE_TRANSITION_MS,0,1),ease=u*u*(3-2*u);for(var i=0;i<3;i++)portalModeWeights[i]=portalModeFromWeights[i]+(portalModeTargetWeights[i]-portalModeFromWeights[i])*ease;if(u>=1){for(var j=0;j<3;j++){portalModeWeights[j]=portalModeTargetWeights[j];portalModeFromWeights[j]=portalModeWeights[j];}portalModeTransitionStart=0;}portalMix=portalModeWeights[0]+portalModeWeights[2];}
function setPortalMode(v){var target=Math.floor(clamp(v,-1,1)),t=now();updatePortalModeTransition(t);if(target===portalMode&&portalModeTargetWeights[portalModeIndex(target)]===1)return;portalMode=target;for(var i=0;i<3;i++){portalModeFromWeights[i]=portalModeWeights[i];portalModeTargetWeights[i]=0;}portalModeTargetWeights[portalModeIndex(target)]=1;portalModeTransitionStart=t;}
function setPortalX(v){var nv=clamp(v,0,1);if(Math.abs(nv-portalX)>1e-9)outlet(2,"rebase");portalX=nv;} function setPortalY(v){var nv=clamp(v,0,1);if(Math.abs(nv-portalY)>1e-9)outlet(2,"rebase");portalY=nv;}
function resetUiMotion(){outlet(2,"reset");}
function touchFlowStructure(){flowStructureRevision++;}
function setFormShape(v){var nv=clamp(v,0,100)*.01,changed=0;for(var i=1;i<=4;i++){if(Math.abs(formShapes[i]-nv)>1e-9)changed=1;formShapes[i]=nv;}if(changed){touchFlowStructure();resetUiMotion();}}
function setFlowAmount(v){
 var nv=clamp(v,0,100)*.01,shared=Number(flowClock.commandAmount)||0;
 // The first voice that receives a new engagement creates one shared
 // generation. No voice may invent its own Flow start time.
 if(shared<.0001&&nv>.0001){flowClock.generation=(Number(flowClock.generation)||0)+1;flowClock.originX=Number(flowClock.x)||0;flowClock.originY=Number(flowClock.y)||0;flowClock.originDistance=Number(flowClock.distance)||0;}
 if(nv<.0001)flowClock.frameLocked=0;
 flowClock.commandAmount=nv;flowAmount=nv;
}
function restartFlowGeometry(){flowClock.generation=(Number(flowClock.generation)||0)+1;flowClock.originDistance=Number(flowClock.distance)||0;flowClock.routeRevision=(Number(flowClock.routeRevision)||0)+1;}
function setFlowMode(v){var nv=Math.floor(clamp(v,0,2)),shared=isFinite(Number(flowClock.commandMode))?Number(flowClock.commandMode):flowMode;if(nv!==shared){restartFlowGeometry();flowClock.commandMode=nv;if(nv===1)flowClock.appliedCounterDirection=isFinite(Number(flowClock.commandDirection))?Number(flowClock.commandDirection):flowDirection;}if(nv!==flowMode)resetUiMotion();flowMode=nv;}
function setFlowDirection(v){
 var nv=((Number(v)%360)+360)%360,shared=isFinite(Number(flowClock.commandDirection))?Number(flowClock.commandDirection):flowDirection,d=Math.atan2(Math.sin((nv-shared)*Math.PI/180.),Math.cos((nv-shared)*Math.PI/180.));
 if(Math.abs(d)>1e-9){var mode=isFinite(Number(flowClock.commandMode))?Number(flowClock.commandMode):flowMode;if(mode!==1)flowClock.routeRevision=(Number(flowClock.routeRevision)||0)+1;flowClock.commandDirection=nv;}
 flowDirection=nv;
}
function setFlowSpeed(v){flowSpeed=clamp(v,0,5);}
function setFlowLayers(v){var nv=Math.floor(clamp(v,1,4)),shared=isFinite(Number(flowClock.commandLayers))?Number(flowClock.commandLayers):flowLayers,mode=isFinite(Number(flowClock.commandMode))?Number(flowClock.commandMode):flowMode;if(nv!==shared){if(mode===1)restartFlowGeometry();flowClock.commandLayers=nv;}if(nv!==flowLayers)resetUiMotion();flowLayers=nv;}
function setFlowCenter(v){flowCenter=clamp(v,0,100)*.01;}
function setFlowOffset(v){flowOffset=clamp(v,-100,100)*.01;flowClock.commandOffset=flowOffset;}
function msg_int(v){if(inlet===1)voiceId=Math.max(0,Math.floor(v));else if(inlet===2){setAll(densities,v);touchFlowStructure();}else if(inlet===3){setAll(grids,v);touchFlowStructure();}else if(inlet===4)voiceCount=Math.max(1,Math.floor(clamp(v,1,50)));else if(inlet===5)setswarms(v);else if(inlet===22)setPortalMode(v);else if(inlet===23)setPortalX(v);else if(inlet===24)setPortalY(v);else if(inlet===25)portalDirection=((Number(v)%360)+360)%360;else if(inlet===26)portalWidth=clamp(v,0,360);else if(inlet===27)portalSpeed=clamp(v,0,20);else if(inlet===28)portalDeviation=clamp(v,0,100);else if(inlet===29)emitPortalOrigin();else if(inlet>=37&&inlet<=42)handleLanding([v]);else if(inlet===43)flockingTarget=clamp(v,0,100)*.01;else if(inlet===44)flockNeighborCount=Math.floor(clamp(v,1,20));else if(inlet===45)flockSeparation=clamp(v,0,100);else if(inlet===46)setFormShape(v);else if(inlet===47)setFlowAmount(v);else if(inlet===48)setFlowMode(v);else if(inlet===49)setFlowDirection(v);else if(inlet===50)setFlowSpeed(v);else if(inlet===51)setFlowLayers(v);else if(inlet===52)setFlowCenter(v);else if(inlet===53)setFlowOffset(v);}
function msg_float(v){msg_int(v);} function setAll(a,v){v=clamp(v,0,100)*.01;for(var i=1;i<=4;i++)a[i]=v;}
function swarmSynchronized(){for(var sg=1;sg<=4;sg++)if(densities[sg]>.0001)return 1;return flowAmount>.0001?1:0;}
function publishLeaderInput(){if(!inputReady||voiceId<1)return;var g=groupFor(voiceId,swarmCount),local=localIndex(voiceId,swarmCount);if(local===1){leaders["x"+g]=inputX;leaders["y"+g]=inputY;leaders["v"+g]=1;}}
function captureSwarmFrame(){
 publishLeaderInput();
 var g=groupFor(voiceId,swarmCount),local=localIndex(voiceId,swarmCount),generation=Number(flowClock.generation)||0;
 if(voiceId===1&&flowAmount>.0001){var mode=isFinite(Number(flowClock.commandMode))?Number(flowClock.commandMode):flowMode,requested=isFinite(Number(flowClock.commandDirection))?Number(flowClock.commandDirection):flowDirection,applied=isFinite(Number(flowClock.appliedCounterDirection))?Number(flowClock.appliedCounterDirection):requested,directionDelta=Math.atan2(Math.sin((requested-applied)*Math.PI/180.),Math.cos((requested-applied)*Math.PI/180.));if(mode===1&&Math.abs(directionDelta)>1e-9){restartFlowGeometry();flowClock.appliedCounterDirection=requested;generation=Number(flowClock.generation)||0;}else if(mode!==1)flowClock.appliedCounterDirection=requested;}
 if(inputReady&&local===1&&flowAmount>.0001&&flowOriginGeneration!==generation){leaders["flowOriginX"+g]=inputX;leaders["flowOriginY"+g]=inputY;flowOriginGeneration=generation;}
 if(voiceId===1&&flowAmount>.0001){flowClock.frameLocked=0;updateFlowClock(1);flowClock.frameLocked=1;flowClock.frameSerial=(Number(flowClock.frameSerial)||0)+1;}
 if(inputReady&&local===1&&flowAmount>.0001){var fd=Number(flowClock.distance)||0;ensureFlowPortalRoute(g,1,fd,0);ensureFlowPortalRoute(g,-1,fd,0);}
}
function renderSwarmFrame(){if(inputReady&&swarmSynchronized())process(inputX,inputY);}
function bang(){if(inlet===29)emitPortalOrigin();else if(inlet===54)captureSwarmFrame();else if(inlet===55)renderSwarmFrame();}
function emitPortalOrigin(){if(portalMode===0)return;var t=now();portalMix=1;portalMixTime=t;portalLastTime=t;portalPhase=-portalHash(voiceId*7.31);portalCycle=-1;portalAngleOffset=0;portalLatchedAngle=portalDirection*Math.PI/180.;portalLatchedX=portalX;portalLatchedY=portalY;portalTravelDistance=Math.max(.05,portalEdgeDistance(portalLatchedX,portalLatchedY,Math.cos(portalLatchedAngle),Math.sin(portalLatchedAngle)));portalSoundX=portalX;portalSoundY=portalY;portalSoundTime=t;portalSoundReady=1;lastX=portalX;lastY=portalY;lastSoundX=portalX;lastSoundY=portalY;outlet(2,"reset");outlet(0,portalX,portalY);outlet(1,portalX,portalY);}
function updateLandingMix(t){if(!landingMixStart){landingMix=landingEnabled?1:0;landingMixFrom=landingMix;landingMixTarget=landingMix;return landingMix;}var u=clamp((t-landingMixStart)/LANDING_TRANSITION_MS,0,1),ease=u*u*(3-2*u);landingMix=landingMixFrom+(landingMixTarget-landingMixFrom)*ease;if(u>=1){landingMix=landingMixTarget;landingMixFrom=landingMix;landingMixStart=0;}return landingMix;}
function setLandingEnabled(enabled){var t=now();updateLandingMix(t);var target=enabled?1:0;if(target===landingEnabled&&target===landingMixTarget)return;landingEnabled=target;landingMixFrom=landingMix;landingMixTarget=target;landingMixStart=t;}
function handleLanding(a){var lv=Number(a[0]),lt=a.length>1?String(a[1]):String(now()),ls=a.length>2?Number(a[2]):(a.length>1?Number(a[1]):now());if(inlet===37){var le=lv!==0?1:0;if(le&&!landingEnabled&&landingClock.modeToken!==lt){landingClock.modeToken=lt;landingClock.epoch=now();landingClock.seed=isFinite(ls)?ls:(Number(landingClock.seed)||0)+1;}setLandingEnabled(le);}else if(inlet===38)landingPointCount=Math.floor(clamp(lv,1,50));else if(inlet===39){landingCycleSeconds=clamp(lv,.5,120);}else if(inlet===40){landingStartWindow=clamp(lv,0,120);retimeLandingJourney();}else if(inlet===41){landingEndWindow=clamp(lv,0,120);retimeLandingJourney();}else if(landingClock.triggerToken!==lt){landingClock.triggerToken=lt;landingClock.epoch=now();landingClock.seed=isFinite(ls)?ls:(Number(landingClock.seed)||0)+1;}}
function list(){var a=arrayfromargs(arguments); if(inlet===6){if(a.length>1){densities[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100)*.01;touchFlowStructure();}return;} if(inlet===7){if(a.length>1){grids[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100)*.01;touchFlowStructure();}return;} if(inlet===8){if(a.length>1)orbitTempos[Math.floor(clamp(a[0],1,4))]=clamp(a[1],-10,10);return;} if(inlet===9){if(a.length>1)ringModes[Math.floor(clamp(a[0],1,4))]=Math.floor(clamp(a[1],0,2));return;} if(inlet===10){if(a.length>1)ringSpreads[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100)*.01;return;} if(inlet>=11&&inlet<=15){if(a.length>1){var pg=Math.floor(clamp(a[0],1,4)),pv=Number(a[1]);if(inlet===11)pulseInner[pg]=clamp(pv,0,100);else if(inlet===12)pulseOuter[pg]=clamp(pv,0,100);else if(inlet===13)pulseTempo[pg]=clamp(pv,0,10);else if(inlet===14)pulsePhaseSpread[pg]=clamp(pv,0,100);else {pulseTempoSpread[pg]=clamp(pv,0,100);if(a.length>2&&pulseTempoSpread[pg]===0){pulseSyncEpoch[pg]=Number(a[2]);pulseSyncStart[pg]=now();}else if(pulseTempoSpread[pg]>0)pulseSyncEpoch[pg]=0;}}return;} if(inlet===16){if(a.length>1)snakeEnabled[Math.floor(clamp(a[0],1,4))]=Number(a[1])!==0?1:0;return;} if(inlet===17){if(a.length>1)snakeSpacing[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100);return;} if(inlet===18){if(a.length>1){var ag=Math.floor(clamp(a[0],1,4)),av=clamp(a[1],0,100)*.01;if(alignmentTarget[ag]===0&&av>0)alignmentCapture[ag]=1;alignmentTarget[ag]=av;}return;} if(inlet===19){if(a.length>0){var eg=Math.floor(clamp(a[0],1,4));escapePending[eg]=1;}return;} if(inlet===20){if(a.length>1)escapeStrength[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100);return;} if(inlet===21){if(a.length>1)escapeReturn[Math.floor(clamp(a[0],1,4))]=clamp(a[1],.2,10);return;}
if(inlet===22){setPortalMode(a[0]);return;}
if(inlet===23){setPortalX(a[0]);return;}
if(inlet===24){setPortalY(a[0]);return;}
if(inlet===25){portalDirection=((Number(a[0])%360)+360)%360;return;}
if(inlet===26){portalWidth=clamp(a[0],0,360);return;}
if(inlet===27){portalSpeed=clamp(a[0],0,20);return;}
if(inlet===28){portalDeviation=clamp(a[0],0,100);return;}
if(inlet>=30&&inlet<=36){if(a.length>1){var wg=Math.floor(clamp(a[0],1,4)),wv=Number(a[1]);if(inlet===30)waveModes[wg]=Math.floor(clamp(wv,0,2));else if(inlet===31)waveTypes[wg]=Math.floor(clamp(wv,0,1));else if(inlet===32){var run=Math.floor(clamp(wv,0,2)),token=a.length>2?String(a[2]):String(now());if(run===1){if(waveClock["token"+wg]!==token){waveClock["token"+wg]=token;var pulses=waveClock["pulses"+wg]||[];pulses=pulses.slice(0);pulses.push(0);waveClock["pulses"+wg]=pulses.slice(-16);}}else{beginWaveRunTransition(wg,run,token);waveRuns[wg]=run;}}else if(inlet===33)waveAmplitudes[wg]=clamp(wv,0,100);else if(inlet===34)waveLengths[wg]=clamp(wv,1,100);else if(inlet===35)waveSpeeds[wg]=clamp(wv,0,6);else waveWidths[wg]=clamp(wv,1,100);}return;}
if(inlet>=37&&inlet<=42){handleLanding(a);return;}
if(inlet===43){flockingTarget=clamp(a[0],0,100)*.01;return;}
if(inlet===44){flockNeighborCount=Math.floor(clamp(a[0],1,20));return;}
if(inlet===45){flockSeparation=clamp(a[0],0,100);return;}
if(inlet===46){setFormShape(a[0]);return;}
if(inlet===47){setFlowAmount(a[0]);return;}
if(inlet===48){setFlowMode(a[0]);return;}
if(inlet===49){setFlowDirection(a[0]);return;}
if(inlet===50){setFlowSpeed(a[0]);return;}
if(inlet===51){setFlowLayers(a[0]);return;}
if(inlet===52){setFlowCenter(a[0]);return;}
if(inlet===56){if(a.length>1)snakeDeviation[Math.floor(clamp(a[0],1,4))]=clamp(a[1],0,100);return;}
if(inlet!==0||a.length<2)return;inputX=Number(a[0]);inputY=Number(a[1]);if(!isFinite(inputX)||!isFinite(inputY))return;inputReady=1;if(!swarmSynchronized())process(inputX,inputY);}
function setswarms(v){v=Math.max(1,Math.min(4,Math.floor(Number(v))));if(v!==swarmCount){oldSwarmCount=swarmCount;swarmCount=v;touchFlowStructure();transitionX=lastX;transitionY=lastY;transitionSoundX=lastSoundX;transitionSoundY=lastSoundY;transitionStart=now();}}
function groupFor(id,c){return ((id-1)%c)+1;} function localIndex(id,c){return Math.floor((id-1)/c)+1;} function members(g,c,n){return n<g?0:Math.floor((n-g)/c)+1;}
function ringDirection(g,ring,R){var rm=ringModes[g];if(rm===1&&ring%2===0)return -1;if(rm===2&&ring>Math.ceil(R*.5))return -1;return 1;}
function organicBias(g){var t=now()/1000.,p=g*1.731;return clamp((Math.sin(t*.263+p)+.55*Math.sin(t*.151+p*1.7)+.25*Math.sin(t*.087+p*.63))/1.8*1.35,-1,1);}
function ringSpeedFactor(g,ring,R){if(R<=1)return 1;var amount=ringSpreads[g]*organicBias(g),sum=0;for(var q=1;q<=R;q++){var qn=(q-1)/(R-1);sum+=Math.pow(4,amount*(1-2*qn));}var rn=(ring-1)/(R-1),raw=Math.pow(4,amount*(1-2*rn));return raw/(sum/R);}
function advanceRing(g,ring,R){var key=g+"_"+ring,phaseKey="phase_"+key,speedKey="speed_"+key,timeKey="time_"+key,t=now(),storedTime=Number(orbitClock[timeKey]),last=isFinite(storedTime)?storedTime:t,dt=clamp((t-last)/1000.,0,.1);orbitClock[timeKey]=t;var target=orbitTempos[g]*ringDirection(g,ring,R)*ringSpeedFactor(g,ring,R),storedSpeed=Number(orbitClock[speedKey]),cur=isFinite(storedSpeed)?storedSpeed:0,a=1-Math.exp(-dt/ORBIT_SLEW_SECONDS);cur+=(target-cur)*a;if(Math.abs(target-cur)<.000001)cur=target;orbitClock[speedKey]=cur;var storedPhase=Number(orbitClock[phaseKey]),ph=isFinite(storedPhase)?storedPhase:0;ph+=cur*.30*dt;orbitClock[phaseKey]=ph;return ph;}
function formationGeometry(localId,n,g){if(localId<=1||n<=1)return {angle:0,radius:0};var f=n-1,R=1;while(3*R*(R+1)<f)R++;var idx=localId-2,prev=0,end=0,ring=1,den=R*(R+1);for(ring=1;ring<=R;ring++){end=Math.round(f*ring*(ring+1)/den);if(idx<end)break;prev=end;}var used=Math.max(1,end-prev),pos=idx-prev,rad=.4*ring/R,off=(ring%2===0)?Math.PI/used:0,ang=-Math.PI*.5+off+2*Math.PI*pos/used;ang+=advanceRing(g,ring,R);return {angle:ang,radius:rad};}
function staticFormationGeometry(localId,n){if(localId<=1||n<=1)return {angle:0,radius:0};var f=n-1,R=1;while(3*R*(R+1)<f)R++;var idx=localId-2,prev=0,end=0,ring=1,den=R*(R+1);for(ring=1;ring<=R;ring++){end=Math.round(f*ring*(ring+1)/den);if(idx<end)break;prev=end;}var used=Math.max(1,end-prev),pos=idx-prev,rad=.4*ring/R,off=(ring%2===0)?Math.PI/used:0,ang=-Math.PI*.5+off+2*Math.PI*pos/used;return {angle:ang,radius:rad};}
function polygonRadiusFactor(angle,sides,rotation){var sector=2*Math.PI/sides,a=angle-rotation;a=((a+sector*.5)%sector+sector)%sector-sector*.5;return Math.cos(Math.PI/sides)/Math.max(.15,Math.cos(a));}
function formationPoint(geometry,shape){if(geometry.radius<=0)return [.5,.5];shape=clamp(shape,0,1);var tri=polygonRadiusFactor(geometry.angle,3,-Math.PI*.5),square=polygonRadiusFactor(geometry.angle,4,0),factor;if(shape<=.5)factor=1+(tri-1)*shape*2;else factor=tri+(square-tri)*(shape-.5)*2;var rad=geometry.radius*factor;return [.5+Math.cos(geometry.angle)*rad,.5+Math.sin(geometry.angle)*rad];}
function smoothMorph(g){var t=now(),last=morphTimes[g];formShapeBefore[g]=formShapeCurrent[g];if(!last){morphTimes[g]=t;densityCurrent[g]=densities[g];gridCurrent[g]=grids[g];formShapeCurrent[g]=formShapes[g];formShapeBefore[g]=formShapeCurrent[g];return;}var dt=clamp((t-last)/1000.,0,.1);morphTimes[g]=t;var a=1-Math.exp(-dt/1.5);densityCurrent[g]+=(densities[g]-densityCurrent[g])*a;gridCurrent[g]+=(grids[g]-gridCurrent[g])*a;formShapeCurrent[g]+=(formShapes[g]-formShapeCurrent[g])*a;}
function voiceVariation(id){var z=Math.sin(id*12.9898+78.233)*43758.5453;return 2*(z-Math.floor(z)) - 1;}
function pulseScale(g,local,n){var t=now(),last=pulseTimes[g]||t,dt=clamp((t-last)/1000.,0,.1);pulseTimes[g]=t;var a=1-Math.exp(-dt/.45);pulseInnerNow[g]+=(pulseInner[g]-pulseInnerNow[g])*a;pulseOuterNow[g]+=(pulseOuter[g]-pulseOuterNow[g])*a;pulsePhaseNow[g]+=(pulsePhaseSpread[g]-pulsePhaseNow[g])*a;pulseTempoSpreadNow[g]+=(pulseTempoSpread[g]-pulseTempoSpreadNow[g])*a;pulseActiveNow[g]+=((pulseTempo[g]>0?1:0)-pulseActiveNow[g])*a;var variation=voiceVariation(voiceId),tempoFactor=Math.pow(2,(pulseTempoSpreadNow[g]/100)*variation),targetSpeed=pulseTempo[g]*tempoFactor,sa=1-Math.exp(-dt/.65);pulseSpeedNow[g]+=(targetSpeed-pulseSpeedNow[g])*sa;pulsePhaseState[g]+=pulseSpeedNow[g]*(2*Math.PI/5)*dt;if(pulseSyncEpoch[g]>0){var desired=((t-pulseSyncEpoch[g])/1000.)*pulseTempo[g]*(2*Math.PI/5),diff=desired-pulsePhaseState[g];diff=Math.atan2(Math.sin(diff),Math.cos(diff));pulsePhaseState[g]+=diff*(1-Math.exp(-dt/1.2));if(t-pulseSyncStart[g]>3000)pulseSyncEpoch[g]=0;}var offset=(pulsePhaseNow[g]/100)*2*Math.PI*((Math.max(1,local)-1)/Math.max(1,n)),wave=.5+.5*Math.sin(pulsePhaseState[g]+offset),lo=Math.min(pulseInnerNow[g],pulseOuterNow[g])*.01,hi=Math.max(pulseInnerNow[g],pulseOuterNow[g])*.01;var pulsed=lo+(hi-lo)*wave;return 1+pulseActiveNow[g]*(pulsed-1);}
function applyPulse(point,lx,ly,scale,valid){if(!valid)return point;return[lx+(point[0]-lx)*scale,ly+(point[1]-ly)*scale];}

function historyKey(prefix,g,i){return prefix+g+"_"+i;}
function resetHistory(g,x,y){leaders["hh"+g]=0;leaders["hn"+g]=1;leaders["htotal"+g]=0;leaders[historyKey("hx",g,0)]=x;leaders[historyKey("hy",g,0)]=y;leaders[historyKey("hc",g,0)]=0;leaders["hvalid"+g]=1;}
function recordHistory(g,x,y){if(!leaders["hvalid"+g]){resetHistory(g,x,y);return;}var h=Math.floor(Number(leaders["hh"+g])||0),px=Number(leaders[historyKey("hx",g,h)]),py=Number(leaders[historyKey("hy",g,h)]);if(!isFinite(px)||!isFinite(py)){resetHistory(g,x,y);return;}var dx=x-px,dy=y-py,dist=Math.sqrt(dx*dx+dy*dy);if(dist<.0005)return;var nh=(h+1)%historySize,total=(Number(leaders["htotal"+g])||0)+dist,n=Math.min(historySize,Math.floor(Number(leaders["hn"+g])||1)+1);leaders[historyKey("hx",g,nh)]=x;leaders[historyKey("hy",g,nh)]=y;leaders[historyKey("hc",g,nh)]=total;leaders["hh"+g]=nh;leaders["hn"+g]=n;leaders["htotal"+g]=total;}
function trailPoint(g,distance){if(!leaders["hvalid"+g])return null;var h=Math.floor(Number(leaders["hh"+g])||0),n=Math.floor(Number(leaders["hn"+g])||1),newer=h,nc=Number(leaders[historyKey("hc",g,newer)])||0,target=nc-distance;for(var k=1;k<n;k++){var older=(h-k+historySize)%historySize,oc=Number(leaders[historyKey("hc",g,older)])||0;if(oc<=target){var den=nc-oc,u=den>0?(target-oc)/den:0,ox=Number(leaders[historyKey("hx",g,older)]),oy=Number(leaders[historyKey("hy",g,older)]),nx=Number(leaders[historyKey("hx",g,newer)]),ny=Number(leaders[historyKey("hy",g,newer)]);return[ox+(nx-ox)*u,oy+(ny-oy)*u];}newer=older;nc=oc;}return[Number(leaders[historyKey("hx",g,newer)]),Number(leaders[historyKey("hy",g,newer)])];}
function snakeVariation(g,index,salt){var z=Math.sin((g*137.31+index*53.17+salt*19.73)*12.9898+78.233)*43758.5453;return 2*(z-Math.floor(z))-1;}
// At maximum deviation the chain occupies a band about six marker widths wide.
// Gap variation remains below 45 percent, so followers keep their order.
var SNAKE_MAX_HALF_WIDTH=.075,SNAKE_MAX_GAP_VARIATION=.45;
function snakeTrailDistance(g,local,step,deviation){var d=0,mix=clamp(deviation,0,100)*.01;for(var i=2;i<=local;i++)d+=step*(1+SNAKE_MAX_GAP_VARIATION*mix*snakeVariation(g,i,1));return d;}
function snakeTrailTarget(g,local,step,deviation){if(local<=1)return null;var mix=clamp(deviation,0,100)*.01,distance=snakeTrailDistance(g,local,step,deviation),p=trailPoint(g,distance);if(!p||mix<=.000001)return p;var eps=Math.max(.002,step*.5),older=trailPoint(g,distance+eps),newer=trailPoint(g,Math.max(0,distance-eps));if(!older||!newer)return p;var dx=newer[0]-older[0],dy=newer[1]-older[1],len=Math.sqrt(dx*dx+dy*dy);if(len<.000001)return p;var lateral=SNAKE_MAX_HALF_WIDTH*mix*snakeVariation(g,local,2);return[p[0]-dy/len*lateral,p[1]+dx/len*lateral];}
function updateSnakeMix(g){var t=now(),last=snakeTimes[g]||t,dt=clamp((t-last)/1000.,0,.1);snakeTimes[g]=t;snakeMix[g]+=(snakeEnabled[g]-snakeMix[g])*(1-Math.exp(-dt/1.0));snakeSpacingSound[g]+=(snakeSpacing[g]-snakeSpacingSound[g])*(1-Math.exp(-dt/1.5));snakeDeviationSpatial[g]+=(snakeDeviation[g]-snakeDeviationSpatial[g])*(1-Math.exp(-dt/.8));snakeDeviationSound[g]+=(snakeDeviation[g]-snakeDeviationSound[g])*(1-Math.exp(-dt/1.5));return snakeMix[g];}
function applySnake(point,target,mix){if(!target||!isFinite(target[0])||!isFinite(target[1]))return point;return[point[0]+(target[0]-point[0])*mix,point[1]+(target[1]-point[1])*mix];}

function updateAlignment(g,x,y,lx,ly,valid){var t=now(),last=alignmentTimes[g]||t,dt=clamp((t-last)/1000.,0,.1);alignmentTimes[g]=t;if(alignmentCapture[g]&&valid){alignmentOffsetX[g]=x-lx;alignmentOffsetY[g]=y-ly;alignmentCapture[g]=0;}alignmentSpatial[g]+=(alignmentTarget[g]-alignmentSpatial[g])*(1-Math.exp(-dt/.45));alignmentSound[g]+=(alignmentTarget[g]-alignmentSound[g])*(1-Math.exp(-dt/1.5));}
function alignedPoint(x,y,lx,ly,mix,g,valid){if(!valid||voiceId===g)return[x,y];var tx=lx+alignmentOffsetX[g],ty=ly+alignmentOffsetY[g];return[x+(tx-x)*mix,y+(ty-y)*mix];}

function applyEscape(point,g,lx,ly,valid){if(!valid)return point;var t=now();if(escapePending[g]){var dx=point[0]-lx,dy=point[1]-ly,len=Math.sqrt(dx*dx+dy*dy),radial=len;if(len<.0001){var fallback=voiceId*2.399963229728653;dx=Math.cos(fallback);dy=Math.sin(fallback);len=1;}var baseAngle=Math.atan2(dy,dx),angleJitter=(Math.random()-.5)*1.15,angle=baseAngle+angleJitter,rDelay=Math.random(),rAttack=Math.random(),rMag=Math.random(),rRare=Math.random(),rReturn=Math.random(),delay=.015+.8*rDelay*rDelay+.3*Math.min(1,radial/.6)*Math.random(),attack=.035+.52*rAttack*rAttack,magFactor;if(rRare<.2)magFactor=1.5+1.3*Math.random();else magFactor=.18+1.12*Math.pow(rMag,1.7);var mag=Math.min(.95,escapeStrength[g]*.0035*magFactor);escapeDX[g]=Math.cos(angle)*mag;escapeDY[g]=Math.sin(angle)*mag;escapeAttack[g]=attack;escapeDuration[g]=Math.max(.2,escapeReturn[g]*(.45+1.35*rReturn));escapeStart[g]=t+delay*1000;escapePending[g]=0;}if(!escapeStart[g])return point;var elapsed=(t-escapeStart[g])/1000.;if(elapsed<0)return point;var attack=escapeAttack[g],env;if(elapsed<attack){var au=elapsed/attack;env=.5-.5*Math.cos(Math.PI*au);}else{var ru=(elapsed-attack)/escapeDuration[g];if(ru>=1){escapeStart[g]=0;return point;}env=.5+.5*Math.cos(Math.PI*ru);}return[point[0]+escapeDX[g]*env,point[1]+escapeDY[g]*env];}

function landingHash(v){var h=Math.sin(v*12.9898+78.233)*43758.5453;return h-Math.floor(h);}
function landingCandidate(generation,point,attempt){var seed=landingLocalSeed;return [.08+.84*landingHash(seed*101.3+generation*71.7+point*17.1+attempt*131.9),.08+.84*landingHash(seed*211.9+generation*43.3+point*29.7+attempt*197.3)];}
function landingTarget(generation){
 var count=Math.max(1,Math.min(landingLatchedPoints,voiceCount)),point=(Math.max(1,voiceId)-1)%count,key=String(point),sequence=landingTargetCache[key]||[],minimum=Math.sqrt(2)*.25;
 if(!sequence.length)sequence[0]=landingCandidate(0,point,0);
 for(var g=sequence.length;g<=generation;g++){var previous=sequence[g-1],best=null,bestDistance=-1;for(var attempt=0;attempt<32;attempt++){var candidate=landingCandidate(g,point,attempt),dx=candidate[0]-previous[0],dy=candidate[1]-previous[1],d=Math.sqrt(dx*dx+dy*dy);if(d>=minimum){best=candidate;break;}if(d>bestDistance){bestDistance=d;best=candidate;}}sequence[g]=best;}
 landingTargetCache[key]=sequence;return sequence[Math.max(0,generation)];
}
function latchLandingParameters(){landingLatchedPoints=landingPointCount;landingLatchedDuration=Math.max(.5,landingCycleSeconds);landingLatchedStart=Math.max(0,landingStartWindow);landingLatchedEnd=Math.max(0,landingEndWindow);landingLatchedDeviation=portalDeviation;}
function scheduleLandingJourney(cycle,fromX,fromY,t,baseTime,generation){
 landingLocalCycle=cycle;landingFromX=fromX;landingFromY=fromY;
 landingTargetGeneration=isFinite(generation)?Math.max(0,Math.floor(generation)):cycle;
 var target=landingTarget(landingTargetGeneration),cycleStart=isFinite(baseTime)?baseTime:landingSeenEpoch;landingCycleStart=cycleStart;
 var startRank=landingHash(landingLocalSeed*307.1+cycle*89.3+voiceId*53.9);
 var endRank=landingHash(landingLocalSeed*503.7+cycle*47.1+voiceId*31.3);
 var depart=cycleStart+startRank*landingLatchedStart*1000.;
 var rest=Math.min(2,Math.max(0,landingLatchedDuration-landingLatchedStart-landingLatchedEnd));
 var arrivalBase=Math.max(landingLatchedStart,landingLatchedDuration-rest-landingLatchedEnd);
 var arrive=cycleStart+(arrivalBase+endRank*landingLatchedEnd)*1000.;
 if(arrive<depart+200)arrive=depart+200;
 // A voice still travelling when newer cycles appear finishes that journey.
 // Its next journey starts from the reached point without a positional jump.
 if(depart<t){var travel=arrive-depart;depart=t;arrive=t+Math.max(200,travel);}
 landingDepartTime=depart;landingArriveTime=arrive;landingTargetX=target[0];landingTargetY=target[1];
 if(typeof messnamed==="function"){var targetBus="FSC_20261026_3922_landing_targets";messnamed(targetBus,"landingtarget",voiceId,landingTargetX,landingTargetY);if(namespace!=="3922"&&namespace!=="0"&&namespace!=="default")messnamed("FSC_20261026_"+namespace+"_landing_targets","landingtarget",voiceId,landingTargetX,landingTargetY);}
}
function retimeLandingJourney(){
 if(!landingEnabled||landingLocalCycle<0)return;
 var t=now();latchLandingParameters();
 var startRank=landingHash(landingLocalSeed*307.1+landingLocalCycle*89.3+voiceId*53.9);
 var endRank=landingHash(landingLocalSeed*503.7+landingLocalCycle*47.1+voiceId*31.3);
 var rest=Math.min(2,Math.max(0,landingLatchedDuration-landingLatchedStart-landingLatchedEnd));
 var arrivalBase=Math.max(landingLatchedStart,landingLatchedDuration-rest-landingLatchedEnd);
 var departOffset=startRank*landingLatchedStart*1000.,arrivalOffset=(arrivalBase+endRank*landingLatchedEnd)*1000.;
 if(t<landingDepartTime){landingCycleStart=t;landingDepartTime=t+departOffset;landingArriveTime=t+Math.max(departOffset+200,arrivalOffset);return;}
 if(t<landingArriveTime){var progress=clamp((t-landingDepartTime)/Math.max(1,landingArriveTime-landingDepartTime),0,1),travel=Math.max(200,arrivalOffset-departOffset);landingFromX=landingLastX;landingFromY=landingLastY;landingCycleStart=t;landingDepartTime=t;landingArriveTime=t+Math.max(200,travel*(1-progress));}
}
function landingPosition(normal,updateState){
 var t=now(),last=landingMixTime||t,dt=clamp((t-last)/1000.,0,.1);landingMixTime=t;
 updateLandingMix(t);
 if(updateState)landingDeviationCurrent+=(portalDeviation-landingDeviationCurrent)*(1-Math.exp(-dt/.35));
 if(!landingEnabled&&landingMix<.0001)return normal;
 var epoch=Number(landingClock.epoch);if(!isFinite(epoch)||epoch<=0){epoch=t;landingClock.epoch=t;landingClock.seed=(Number(landingClock.seed)||0)+1;}
 if(updateState&&epoch!==landingSeenEpoch){var startX=landingLocalCycle>=0?landingLastX:normal[0],startY=landingLocalCycle>=0?landingLastY:normal[1];landingSeenEpoch=epoch;landingCycleStart=epoch;landingLocalSeed=Number(landingClock.seed)||1;landingTargetCache={};latchLandingParameters();scheduleLandingJourney(0,startX,startY,t,epoch,0);landingNextOpportunity=epoch+landingLatchedDuration*1000.;}
 if(updateState){
  if(t>=landingArriveTime){landingLastX=landingTargetX;landingLastY=landingTargetY;}
  if(t>=landingArriveTime){
   var oldDuration=landingLatchedDuration;latchLandingParameters();
   if(Math.abs(oldDuration-landingLatchedDuration)>1e-9)landingNextOpportunity=t;
   if(t>=landingNextOpportunity){var opportunity=landingNextOpportunity,step=landingLatchedDuration*1000.;while(opportunity+step<=t)opportunity+=step;var sharedGeneration=Math.max(0,Math.round((opportunity-landingSeenEpoch)/step));scheduleLandingJourney(landingLocalCycle+1,landingLastX,landingLastY,t,opportunity,sharedGeneration);landingNextOpportunity=opportunity+step;}
  }
  var u=t<=landingDepartTime?0:t>=landingArriveTime?1:clamp((t-landingDepartTime)/(landingArriveTime-landingDepartTime),0,1),ease=u*u*(3-2*u);
  var dx=landingTargetX-landingFromX,dy=landingTargetY-landingFromY,dist=Math.sqrt(dx*dx+dy*dy),inv=dist>.0001?1/dist:0;
 var dev=landingDeviationCurrent*.01,jx=(2*landingHash(landingLocalSeed*401.7+landingLocalCycle*67.1+voiceId*97.3)-1),jy=(2*landingHash(landingLocalSeed*449.3+landingLocalCycle*53.9+voiceId*83.7)-1);
 var cx=(2*landingHash(landingLocalSeed*613.9+landingLocalCycle*37.7+voiceId*71.1)-1),cy=(2*landingHash(landingLocalSeed*701.3+landingLocalCycle*29.1+voiceId*61.7)-1);
 var envelope=Math.pow(Math.sin(Math.PI*u),2);
 var curlWave=Math.sin(2*Math.PI*u)*Math.sin(Math.PI*u);
 landingLastX=landingFromX+dx*ease+dist*dev*(jx*.62*envelope+cx*.28*curlWave);
 landingLastY=landingFromY+dy*ease+dist*dev*(jy*.62*envelope+cy*.28*curlWave);
 }
 return [normal[0]+(landingLastX-normal[0])*landingMix,normal[1]+(landingLastY-normal[1])*landingMix];
}

// Continuous wave phase plus parameter morphing. GUI motion is subtracted
// only from the acoustic coordinate derivative, not from actual wave motion.
var waveSmooth=[],waveBefore=[],waveBiasX=[0,0,0,0,0],waveBiasY=[0,0,0,0,0];
function waveState(g){var weights=[0,0,0,0,0,0];weights[waveModes[g]*2+waveTypes[g]]=1;return {amp:waveAmplitudes[g],len:waveLengths[g],speed:waveSpeeds[g],width:waveWidths[g],weights:weights};}
function copyWaveState(p){return {amp:p.amp,len:p.len,speed:p.speed,width:p.width,weights:p.weights.slice(0)};}
function currentWaveRunMix(g,t){var target=Number(waveClock["runTarget"+g]);if(!isFinite(target))target=waveRuns[g]===2?1:0;var from=Number(waveClock["runFrom"+g]);if(!isFinite(from)){from=Number(waveClock["runMix"+g]);if(!isFinite(from))from=target;}var start=Number(waveClock["runStart"+g]);if(!isFinite(start))start=t-1000;var u=clamp((t-start)/1000.,0,1),mix=from+(target-from)*u;waveClock["runMix"+g]=mix;return mix;}
function beginWaveRunTransition(g,run,token){var tokenKey="runToken"+g;if(String(waveClock[tokenKey])===String(token))return;var t=now(),mix=currentWaveRunMix(g,t);waveClock[tokenKey]=String(token);waveClock["runFrom"+g]=mix;waveClock["runTarget"+g]=run===2?1:0;waveClock["runStart"+g]=t;}
function updateWave(g,baseMoved){
 var t=now(),last=waveTimes[g]||t,dt=clamp((t-last)/1000.,0,.1);waveTimes[g]=t;
 waveRunMix[g]=currentWaveRunMix(g,t);
 if(!waveSmooth[g])waveSmooth[g]=waveState(g);
 var p=waveSmooth[g];
 // One shared clock for every voice: spatial wave fronts remain coherent.
 var ct=Number(waveClock["time"+g])||t,cdt=clamp((t-ct)/1000.,0,.1);waveClock["time"+g]=t;
 var ph=Number(waveClock["phase"+g])||0;ph+=2*Math.PI*p.speed/(.04+.96*p.len*.01)*cdt;waveClock["phase"+g]=ph;wavePhase[g]=ph;
 var pulses=waveClock["pulses"+g]||[],next=[];for(var pi=0;pi<pulses.length;pi++){var front=pulses[pi]+p.speed*cdt;if(front<2.3)next.push(front);}waveClock["pulses"+g]=next;
 waveBefore[g]=copyWaveState(p);
 var target=waveState(g),a=1-Math.exp(-dt/.35);
 p.amp+=(target.amp-p.amp)*a;p.len+=(target.len-p.len)*a;p.speed+=(target.speed-p.speed)*a;p.width+=(target.width-p.width)*a;
 for(var i=0;i<6;i++)p.weights[i]+=(target.weights[i]-p.weights[i])*a;
}
function waveOffset(point,g,lx,ly,valid,p){
 var pulses=waveClock["pulses"+g]||[];if((waveRunMix[g]<=.000001&&!pulses.length)||(snakeEnabled[g]&&!landingEnabled&&landingMix<.0001))return [0,0];
 var dx=point[0]-(valid?lx:.5),dy=point[1]-(valid?ly:.5),rad=Math.sqrt(dx*dx+dy*dy),len=.04+.96*p.len*.01,ox=0,oy=0;
 for(var k=0;k<6;k++){
  var mode=Math.floor(k/2),type=k%2,q=mode===0?point[0]:mode===1?point[1]:rad,value=0;
  value=waveRunMix[g]*Math.sin(2*Math.PI*q/len-wavePhase[g]);
  var width=.02+.58*p.width*.01;for(var wi=0;wi<pulses.length;wi++){var d=q-pulses[wi];if(Math.abs(d)<=width)value+=Math.cos(2*Math.PI*d/len)*(.5+.5*Math.cos(Math.PI*d/width));}
  var vx=0,vy=0;if(mode===0){vx=type;vy=1-type;}else if(mode===1){vx=1-type;vy=type;}else if(rad>.0001){if(type){vx=dx/rad;vy=dy/rad;}else{vx=-dy/rad;vy=dx/rad;}}
  var amount=p.weights[k]*p.amp*.0028*value;ox+=vx*amount;oy+=vy*amount;
 }
 return [ox,oy];
}
function waveDisplace(point,g,lx,ly,valid,isSound){
 var after=waveOffset(point,g,lx,ly,valid,waveSmooth[g]);
 if(isSound){var before=waveOffset(point,g,lx,ly,valid,waveBefore[g]);waveBiasX[g]+=before[0]-after[0];waveBiasY[g]+=before[1]-after[1];return [point[0]+after[0]+waveBiasX[g],point[1]+after[1]+waveBiasY[g]];}
 return [point[0]+after[0],point[1]+after[1]];
}

function portalHash(seed){var q=Math.sin(seed*12.9898+78.233)*43758.5453;return q-Math.floor(q);}
function portalEdgeDistance(px,py,dx,dy){var d=1e9,v;if(dx>1e-7){v=(1-px)/dx;if(v>0)d=Math.min(d,v);}else if(dx<-1e-7){v=(0-px)/dx;if(v>0)d=Math.min(d,v);}if(dy>1e-7){v=(1-py)/dy;if(v>0)d=Math.min(d,v);}else if(dy<-1e-7){v=(0-py)/dy;if(v>0)d=Math.min(d,v);}return isFinite(d)?d:0;}
function updatePortalPhase(){var t=now(),last=portalLastTime||t,dt=clamp((t-last)/1000.,0,.1);portalLastTime=t;var distanceScale=.5/clamp(portalTravelDistance,.05,1.5);portalPhase+=portalSpeed*dt*distanceScale;}
function portalPointAtTravel(x,y,travel,cycle,dx,dy,edge){var baseX=portalLatchedX+dx*edge*travel,baseY=portalLatchedY+dy*edge*travel,devAmount=Math.pow(portalDeviation*.01,.82),organic=devAmount*Math.pow(Math.max(0,travel),2),sideSeed=2*portalHash(voiceId*53.71+cycle*11.19)-1,sideWave=Math.sin((travel*1.35+portalHash(voiceId*17.13))*Math.PI*2),side=.42*organic*(.68*sideSeed+.32*sideWave),microX=(x-.5)*.75*organic-dy*side,microY=(y-.5)*.75*organic+dx*side;return[baseX+microX,baseY+microY];}
function portalPoints(x,y){updatePortalPhase();var raw=portalPhase+portalHash(voiceId*7.31),cycle=Math.floor(raw),u=raw-cycle;if(cycle!==portalCycle){var recycling=portalCycle!==-1;portalCycle=cycle;portalAngleOffset=portalHash(voiceId*37.17+cycle*19.73)-.5;portalLatchedAngle=(portalDirection+portalAngleOffset*portalWidth)*Math.PI/180.;portalLatchedX=portalX;portalLatchedY=portalY;outlet(2,recycling?"rebase":"reset");}var referenceMode=portalMode!==0?portalMode:(portalModeWeights[0]>portalModeWeights[2]?-1:1),referenceTravel=referenceMode<0?1-u:u;if(referenceTravel<=portalFunnel){portalLatchedAngle=(portalDirection+portalAngleOffset*portalWidth)*Math.PI/180.;portalLatchedX=portalX;portalLatchedY=portalY;}var dx=Math.cos(portalLatchedAngle),dy=Math.sin(portalLatchedAngle),edge=portalEdgeDistance(portalLatchedX,portalLatchedY,dx,dy);if(referenceTravel<=portalFunnel)portalTravelDistance=Math.max(.05,edge);return[portalPointAtTravel(x,y,1-u,cycle,dx,dy,edge),portalPointAtTravel(x,y,u,cycle,dx,dy,edge)];}
function portalSoundPoint(pp){portalSoundX=pp[0];portalSoundY=pp[1];portalSoundTime=now();portalSoundReady=1;return pp;}
function applyPortal(point,x,y,isSound){updatePortalModeTransition(now());var sinkWeight=portalModeWeights[0],sourceWeight=portalModeWeights[2],m=sinkWeight+sourceWeight;if(m<.0001){if(isSound)portalSoundReady=0;return point;}var pair=portalPoints(x,y),pp=[(pair[0][0]*sinkWeight+pair[1][0]*sourceWeight)/m,(pair[0][1]*sinkWeight+pair[1][1]*sourceWeight)/m];if(isSound)pp=portalSoundPoint(pp);return[point[0]+(pp[0]-point[0])*m,point[1]+(pp[1]-point[1])*m];}
function mapFormation(x,y,fp,gr,den,lx,ly,leaderValid){var fx=x*(1-gr)+(fp[0]+(x-.5)*.05)*gr,fy=y*(1-gr)+(fp[1]+(y-.5)*.05)*gr;if(!leaderValid)return[fx,fy];var sc=1-den;return[lx+(fx-lx)*sc,ly+(fy-ly)*sc];}
function flockKey(prefix,id){return prefix+String(id);}
function boundedFlockOffset(base,offset){var room=offset>=0?1-base:base;if(room<=.000001)return 0;var sign=offset>=0?1:-1;return sign*room*(1-Math.exp(-Math.abs(offset)/Math.max(.02,room)));}
function flockSeparationRadius(v){return .004+.276*Math.pow(clamp(v,0,100)*.01,1.6);}
function flockCouplingRadius(k){return .12+.36*Math.pow((clamp(k,1,20)-1)/19,.55);}
// These are movement-vector weights, never audio gains.
function flockSeparationWeight(v){return .2+4.8*Math.pow(clamp(v,0,100)*.01,1.25);}
function flockCohesionWeight(k){return .18+.82*Math.pow((clamp(k,1,20)-1)/19,.55);}
function flockAlignmentWeight(k){return .06+.60*Math.pow((clamp(k,1,20)-1)/19,.55);}
function publishFlockState(g,t){if(voiceId<1)return;flockState[flockKey("x",voiceId)]=flockX;flockState[flockKey("y",voiceId)]=flockY;flockState[flockKey("vx",voiceId)]=flockVX;flockState[flockKey("vy",voiceId)]=flockVY;flockState[flockKey("t",voiceId)]=t;flockState[flockKey("g",voiceId)]=g;}
function flockNeighbours(g,t){
 var candidates=[],k=Math.min(flockNeighborCount,Math.max(0,voiceCount-1));for(var id=1;id<=voiceCount;id++){if(id===voiceId||Number(flockState[flockKey("g",id)])!==g)continue;var stamp=Number(flockState[flockKey("t",id)]),nx=Number(flockState[flockKey("x",id)]),ny=Number(flockState[flockKey("y",id)]);if(!isFinite(stamp)||t-stamp>750||!isFinite(nx)||!isFinite(ny))continue;var dx=nx-flockX,dy=ny-flockY;candidates.push({id:id,x:nx,y:ny,vx:Number(flockState[flockKey("vx",id)])||0,vy:Number(flockState[flockKey("vy",id)])||0,d2:dx*dx+dy*dy});}candidates.sort(function(a,b){return a.d2-b.d2;});
 if(k>5){flockPartnerIds=[];flockPartnerUntil=0;flockPartnerK=k;return candidates.slice(0,Math.min(k,candidates.length));}
 // Small neighbourhoods keep their partners briefly. This turns continually
 // changing nearest-neighbour snapshots into readable pairs, chains and
 // islands, while the expiry still lets those local structures reorganise.
 if(flockPartnerK!==k||t>=flockPartnerUntil){flockPartnerIds=[];flockPartnerK=k;flockPartnerUntil=t+(1.15+(5-k)*.30)*1000;}
 var byId={},selected=[];for(var ci=0;ci<candidates.length;ci++)byId[candidates[ci].id]=candidates[ci];
 for(var pi=0;pi<flockPartnerIds.length&&selected.length<k;pi++){var retained=byId[flockPartnerIds[pi]];if(retained&&retained.d2<.49)selected.push(retained);}
 for(var fi=0;fi<candidates.length&&selected.length<k;fi++){var candidate=candidates[fi],used=0;for(var si=0;si<selected.length;si++)if(selected[si].id===candidate.id){used=1;break;}if(!used)selected.push(candidate);}
 flockPartnerIds=[];for(var ri=0;ri<selected.length;ri++)flockPartnerIds.push(selected[ri].id);return selected;
}
function flockingLayer(spatial,acoustic,g,allowed){
 var t=now(),dt=flockTime?clamp((t-flockTime)/1000.,.001,.1):.02;flockTime=t;
 var baseVX=0,baseVY=0;if(!flockReady){flockX=spatial[0];flockY=spatial[1];flockBaseX=spatial[0];flockBaseY=spatial[1];flockReady=1;}else{baseVX=(spatial[0]-flockBaseX)/dt;baseVY=(spatial[1]-flockBaseY)/dt;var bs=Math.sqrt(baseVX*baseVX+baseVY*baseVY);if(bs>1.2){baseVX*=1.2/bs;baseVY*=1.2/bs;}}
 var effectiveFlockingTarget=flockingTarget*clamp(allowed,0,1);
 // Switching Flocking off returns smoothly enough to avoid a velocity
 // impulse. Once that short release is over, zero is a real bypass: no
 // neighbour lookup, no published flock state and no residual displacement.
 var spatialTau=effectiveFlockingTarget<.0001?.12:.35,soundTau=effectiveFlockingTarget<.0001?.28:1.15;
 var spatialA=1-Math.exp(-dt/spatialTau),soundA=1-Math.exp(-dt/soundTau);flockSpatialMix+=(effectiveFlockingTarget-flockSpatialMix)*spatialA;flockSoundMix+=(effectiveFlockingTarget-flockSoundMix)*soundA;
 if(effectiveFlockingTarget<.0001&&flockSpatialMix<.0005&&flockSoundMix<.0005&&Math.abs(flockOffsetX)+Math.abs(flockOffsetY)+Math.abs(flockSoundOffsetX)+Math.abs(flockSoundOffsetY)<.0005){flockSpatialMix=0;flockSoundMix=0;flockOffsetX=0;flockOffsetY=0;flockSoundOffsetX=0;flockSoundOffsetY=0;flockPartnerIds=[];flockPartnerUntil=0;flockX=spatial[0];flockY=spatial[1];flockVX=baseVX;flockVY=baseVY;flockBaseX=spatial[0];flockBaseY=spatial[1];return[spatial,acoustic];}
 var ns=flockNeighbours(g,t),targetX=0,targetY=0,cohX=0,cohY=0,alignX=0,alignY=0,sepX=0,sepY=0,bondX=0,bondY=0,totalWeight=0,safe=flockSeparationRadius(flockSeparation),separationRange=safe*1.35,coupling=flockCouplingRadius(flockNeighborCount),localMode=flockNeighborCount<=5,desiredDistance=.025+safe*.95,localReach=Math.min(.65,Math.max(.18+(5-flockNeighborCount)*.02,desiredDistance*1.8+.04));
 for(var i=0;i<ns.length;i++){
  var n=ns[i],dx=flockX-n.x,dy=flockY-n.y,d=Math.sqrt(dx*dx+dy*dy);
  if(d<.00001){var angle=voiceId*2.399963229728653+n.id*1.61803398875;dx=Math.cos(angle)*.00001;dy=Math.sin(angle)*.00001;d=.00001;}
  // The personal zone is independent of the organisation radius. Otherwise
  // neighbour count 1 would silently limit even a 100% minimum distance.
  if(d<separationRange){var separationProximity=1-d/separationRange,separationWeight=separationProximity*separationProximity;sepX+=dx/d*separationWeight;sepY+=dy/d*separationWeight;}
  // With few neighbours, a weak attraction band outside the preferred
  // distance gives retained partners an actual local group structure.
  if(localMode&&d>desiredDistance&&d<localReach){var bondProximity=1-(d-desiredDistance)/(localReach-desiredDistance),bondWeight=bondProximity*bondProximity,bondForce=(d-desiredDistance)*bondWeight;bondX-=dx/d*bondForce;bondY-=dy/d*bondForce;}
  if(d>coupling)continue;
  var proximity=1-d/coupling,weight=proximity*proximity;
  cohX+=n.x*weight;cohY+=n.y*weight;alignX+=n.vx*weight;alignY+=n.vy*weight;totalWeight+=weight;
 }
 if(totalWeight>.0001){
  var cohesionWeight=flockCohesionWeight(flockNeighborCount),alignmentWeight=flockAlignmentWeight(flockNeighborCount);
  cohX=cohX/totalWeight-spatial[0];cohY=cohY/totalWeight-spatial[1];alignX=alignX/totalWeight-baseVX;alignY=alignY/totalWeight-baseVY;
  targetX=cohX*cohesionWeight+alignX*alignmentWeight;
  targetY=cohY*cohesionWeight+alignY*alignmentWeight;
 }
 var separationWeight=flockSeparationWeight(flockSeparation),bondWeight=localMode?.75+(.12*(5-flockNeighborCount)):0;targetX+=sepX*safe*separationWeight+bondX*bondWeight;targetY+=sepY*safe*separationWeight+bondY*bondWeight;
 var targetLength=Math.sqrt(targetX*targetX+targetY*targetY);if(targetLength>.40){targetX*=.40/targetLength;targetY*=.40/targetLength;}
 if(effectiveFlockingTarget<.0001){targetX=0;targetY=0;}
 var offsetA=1-Math.exp(-dt/.42),soundOffsetA=1-Math.exp(-dt/.9);flockOffsetX+=(targetX-flockOffsetX)*offsetA;flockOffsetY+=(targetY-flockOffsetY)*offsetA;flockSoundOffsetX+=(targetX-flockSoundOffsetX)*soundOffsetA;flockSoundOffsetY+=(targetY-flockSoundOffsetY)*soundOffsetA;
 // Flocking bends each recorded path around its local neighbours. Because the
 // result remains anchored to that path, no autonomous particle can stick to
 // or circle along an artificial boundary.
 var sx=spatial[0]+boundedFlockOffset(spatial[0],flockOffsetX*flockSpatialMix),sy=spatial[1]+boundedFlockOffset(spatial[1],flockOffsetY*flockSpatialMix),ax=acoustic[0]+boundedFlockOffset(acoustic[0],flockSoundOffsetX*flockSoundMix),ay=acoustic[1]+boundedFlockOffset(acoustic[1],flockSoundOffsetY*flockSoundMix);
 flockVX=(sx-flockX)/dt;flockVY=(sy-flockY)/dt;var publishedSpeed=Math.sqrt(flockVX*flockVX+flockVY*flockVY);if(publishedSpeed>1.2){flockVX*=1.2/publishedSpeed;flockVY*=1.2/publishedSpeed;}flockX=sx;flockY=sy;publishFlockState(g,t);flockBaseX=spatial[0];flockBaseY=spatial[1];return[[sx,sy],[ax,ay]];
}
function wrap01(v){return v-Math.floor(v);}
function positiveMod(v,m){return ((v%m)+m)%m;}
function shortestWrappedDelta(from,to){var d=to-from;while(d>.5)d-=1;while(d<-.5)d+=1;return d;}
function smoothAngle(current,target,a){var d=Math.atan2(Math.sin(target-current),Math.cos(target-current));return current+d*a;}
function flowPortalKey(g,sign,kind){return(kind===2?"flowMirrorPortal":"flowPortal")+g+(sign<0?"n":"p");}
function storedFlowPortalCenter(key,distance){
 var len=Number(leaders[key+"Length"]),phase0=Number(leaders[key+"Phase"]),origin=Number(leaders[key+"Distance"]),ax=Number(leaders[key+"AX"]),ay=Number(leaders[key+"AY"]),dx=Number(leaders[key+"DX"]),dy=Number(leaders[key+"DY"]);
 if(!(len>.000001)&&isFinite(ax)&&isFinite(ay))return[ax,ay];
 var phase=positiveMod(phase0+(distance-origin),len);if(phase<1e-10||len-phase<1e-10)phase=0;return[ax+dx*phase,ay+dy*phase];
}
function ensureFlowPortalRoute(g,sign,distance,kind){
 kind=kind===2?2:0;var key=flowPortalKey(g,sign,kind),generation=Number(flowClock.generation)||0,revision=Number(flowClock.routeRevision)||0,oldGeneration=Number(leaders[key+"Generation"]),oldRevision=Number(leaders[key+"Revision"]);
 if(oldGeneration===generation&&oldRevision===revision&&Number(leaders[key+"Length"])>.000001)return;
 var cx,cy,layoutX=Number(leaders["flowOriginX"+g]),layoutY=Number(leaders["flowOriginY"+g]);if(!isFinite(layoutX)||!isFinite(layoutY)){layoutX=Number(leaders["x"+g]);layoutY=Number(leaders["y"+g]);}if(!isFinite(layoutX)||!isFinite(layoutY)){layoutX=flowAnchorX;layoutY=flowAnchorY;}if(!isFinite(layoutX)||!isFinite(layoutY)){layoutX=.5;layoutY=.5;}
 if(oldGeneration===generation&&Number(leaders[key+"Length"])>.000001){var oldCenter=storedFlowPortalCenter(key,distance);cx=oldCenter[0];cy=oldCenter[1];}
 else if(kind===2){var axis=flowDirection*Math.PI/180.,nx=-Math.sin(axis),ny=Math.cos(axis);cx=.5+nx*(flowCenter-.5)*.9;cy=.5+ny*(flowCenter-.5)*.9;}
 else{cx=layoutX;cy=layoutY;}
 cx=clamp(cx,0,1);cy=clamp(cy,0,1);
 if(kind===2){layoutX=cx;layoutY=cy;}
 var angle=flowDirection*Math.PI/180.+(kind===2?Math.PI*.5:0)+(sign<0?Math.PI:0),dx=Math.cos(angle),dy=Math.sin(angle),back=portalEdgeDistance(cx,cy,-dx,-dy),forward=portalEdgeDistance(cx,cy,dx,dy),length=Math.max(.000001,back+forward);
 leaders[key+"AX"]=cx-dx*back;leaders[key+"AY"]=cy-dy*back;leaders[key+"BX"]=cx+dx*forward;leaders[key+"BY"]=cy+dy*forward;leaders[key+"DX"]=dx;leaders[key+"DY"]=dy;leaders[key+"Length"]=length;leaders[key+"Phase"]=back;leaders[key+"Distance"]=distance;leaders[key+"LayoutX"]=layoutX;leaders[key+"LayoutY"]=layoutY;leaders[key+"Generation"]=generation;leaders[key+"Revision"]=revision;
}
function flowPortalPoint(g,sign,distance,layoutPoint,kind){
 kind=kind===2?2:0;ensureFlowPortalRoute(g,sign,distance,kind);var key=flowPortalKey(g,sign,kind),len=Number(leaders[key+"Length"]),ax=Number(leaders[key+"AX"]),ay=Number(leaders[key+"AY"]),dx=Number(leaders[key+"DX"]),dy=Number(leaders[key+"DY"]),phase0=Number(leaders[key+"Phase"]),origin=Number(leaders[key+"Distance"]),cx=Number(leaders[key+"LayoutX"]),cy=Number(leaders[key+"LayoutY"]);
 if(!isFinite(cx)||!isFinite(cy)){cx=flowAnchorX;cy=flowAnchorY;}
 var ox=layoutPoint[0]-cx,oy=layoutPoint[1]-cy,parallel=ox*dx+oy*dy,perpX=ox-dx*parallel,perpY=oy-dy*parallel,phase=positiveMod(phase0+(distance-origin)+parallel,len);if(phase<1e-10||len-phase<1e-10)phase=0;
 return[ax+dx*phase+perpX,ay+dy*phase+perpY];
}
function updateFlowClock(master){
 var initialized=isFinite(Number(flowClock.time));
 // Voice 1 is the single transport clock. All other poly~ voices read its
 // snapshot unchanged, so a dense swarm cannot fan out merely because the 50
 // JS instances are evaluated a few milliseconds apart.
 if(initialized&&(!master||Number(flowClock.frameLocked)===1))return {x:Number(flowClock.x)||0,y:Number(flowClock.y)||0,distance:Number(flowClock.distance)||0,angle:isFinite(Number(flowClock.angle))?Number(flowClock.angle):(flowDirection*Math.PI/180.),speed:Number(flowClock.speed)||0,amount:Number(flowClock.amount)||0,offset:isFinite(Number(flowClock.offset))?Number(flowClock.offset):0};
 var t=now(),last=initialized?Number(flowClock.time):t,dt=clamp((t-last)/1000.,0,.1);flowClock.time=t;
 var targetAngle=(flowDirection*Math.PI/180.),angle=isFinite(Number(flowClock.angle))?Number(flowClock.angle):targetAngle,speed=Number(flowClock.speed)||0,amount=Number(flowClock.amount)||0,offset=isFinite(Number(flowClock.offset))?Number(flowClock.offset):0,targetOffset=isFinite(Number(flowClock.commandOffset))?Number(flowClock.commandOffset):flowOffset,a=1-Math.exp(-dt/.4);
 angle=smoothAngle(angle,targetAngle,a);speed+=(flowSpeed-speed)*a;amount+=(flowAmount-amount)*a;offset+=(targetOffset-offset)*a;
 var px=Number(flowClock.x)||0,py=Number(flowClock.y)||0,distance=Number(flowClock.distance)||0,step=speed*FLOW_SPEED_UNIT*dt,stepX=Math.cos(angle)*step,stepY=Math.sin(angle)*step;px+=stepX;py+=stepY;distance+=step;
 flowClock.angle=angle;flowClock.speed=speed;flowClock.amount=amount;flowClock.offset=offset;flowClock.x=px;flowClock.y=py;flowClock.distance=distance;return {x:px,y:py,distance:distance,angle:angle,speed:speed,amount:amount,offset:offset};
}
function flowOffsetVector(clock,mode){
 if(mode===2)return[0,0];
 var nx=-Math.sin(clock.angle),ny=Math.cos(clock.angle),span=.5*(Math.abs(nx)+Math.abs(ny)),distance=(Number(clock.offset)||0)*span;
 return[nx*distance,ny*distance];
}
function counterLayerFor(info,direction){
 var count=Math.max(1,Math.floor(info.count)),layers=Math.max(1,flowLayers),px=-Math.sin(direction),py=Math.cos(direction),ranked=[],token=[Number(flowClock.generation)||0,count,layers,Math.round(direction*1000000),Math.round(formShapes[info.group]*1000000)].join(":"),tokenKey="counterBandsToken"+info.group;
 if(String(leaders[tokenKey])===token){var cached=Number(leaders["counterBand"+info.group+"_"+info.local]),cachedX=Number(leaders["counterBandCenterX"+info.group+"_"+cached]),cachedY=Number(leaders["counterBandCenterY"+info.group+"_"+cached]);if(isFinite(cached)&&isFinite(cachedX)&&isFinite(cachedY))return Math.floor(cached);}
 // Use one immutable formation snapshot for every voice. Calling the live
 // orbit geometry here would advance ring phases independently 50 times and
 // give different voices contradictory band boundaries.
 for(var i=1;i<=count;i++){var geometry=staticFormationGeometry(i,count),shape=formationPoint(geometry,formShapes[info.group]),projection=(shape[0]-.5)*px+(shape[1]-.5)*py;ranked.push({local:i,p:projection,x:shape[0],y:shape[1]});}
 ranked.sort(function(a,b){if(Math.abs(a.p-b.p)>1e-9)return a.p-b.p;return a.local-b.local;});
 var sumX=[],sumY=[],bandCount=[];for(var layer=0;layer<layers;layer++){sumX[layer]=0;sumY[layer]=0;bandCount[layer]=0;}
 for(var j=0;j<ranked.length;j++){var band=Math.min(layers-1,Math.floor(j*layers/count));leaders["counterBand"+info.group+"_"+ranked[j].local]=band;sumX[band]+=ranked[j].x;sumY[band]+=ranked[j].y;bandCount[band]++;}
 for(var b=0;b<layers;b++){leaders["counterBandCenterX"+info.group+"_"+b]=bandCount[b]?sumX[b]/bandCount[b]:.5;leaders["counterBandCenterY"+info.group+"_"+b]=bandCount[b]?sumY[b]/bandCount[b]:.5;}leaders[tokenKey]=token;
 return Math.floor(Number(leaders["counterBand"+info.group+"_"+info.local])||0);
}
function counterBandCenter(g,layer){var x=Number(leaders["counterBandCenterX"+g+"_"+layer]),y=Number(leaders["counterBandCenterY"+g+"_"+layer]);return[isFinite(x)?x:.5,isFinite(y)?y:.5];}
function captureFlow(point,clock,info){
 var preservedCounterX=flowLastX,preservedCounterY=flowLastY,preserveCounterPosition=flowEngaged&&flowLatchedMode===1&&flowMode===1&&(flowLatchedLayers!==flowLayers||Math.abs(Math.atan2(Math.sin((flowDirection-flowLatchedDirection)*Math.PI/180.),Math.cos((flowDirection-flowLatchedDirection)*Math.PI/180.)))>1e-9);
 if(preserveCounterPosition)flowCounterTransitionPending=1;
 flowEngaged=1;flowLatchedMode=flowMode;flowLatchedLayers=flowLayers;flowLatchedDirection=flowDirection;flowSeenStructureRevision=flowStructureRevision;flowStartX=isFinite(Number(flowClock.originX))?Number(flowClock.originX):clock.x;flowStartY=isFinite(Number(flowClock.originY))?Number(flowClock.originY):clock.y;flowStartDistance=isFinite(Number(flowClock.originDistance))?Number(flowClock.originDistance):clock.distance;flowAnchorX=point[0];flowAnchorY=point[1];flowCycleX=0;flowCycleY=0;flowMirrorCycle=0;flowSpatialReady=0;flowBaseReady=0;
 if(flowMode===2)flowMirrorStartDistance=clock.distance;
 var direction=flowMode===1?flowDirection*Math.PI/180.:clock.angle,dx=Math.cos(direction),dy=Math.sin(direction),px=-dy,py=dx,maxProjection=.5*(Math.abs(px)+Math.abs(py)),q=(point[0]-.5)*px+(point[1]-.5)*py,norm=maxProjection>.0001?clamp(.5+.5*q/maxProjection,0,.999999):.5;
 // Counter uses equal quantiles of the formation projected perpendicular to
 // travel. This produces real visible bands instead of arbitrary ID arcs.
 if(info&&info.count>0)flowLayerIndex=counterLayerFor(info,direction);else flowLayerIndex=Math.floor(norm*Math.max(1,flowLayers));
 var axis=flowMode===2?direction:direction-Math.PI*.5,tx=Math.cos(axis),ty=Math.sin(axis),nx=-ty,ny=tx,cx=.5+nx*(flowCenter-.5)*.9,cy=.5+ny*(flowCenter-.5)*.9;flowMirrorAlong=(point[0]-cx)*tx+(point[1]-cy)*ty;
 if(info&&info.count>0){var pairIndex=Math.floor((info.local-1)*.5),pairCount=Math.ceil(info.count*.5);flowMirrorPairNorm=pairCount>1?pairIndex/(pairCount-1)-.5:0;flowMirrorSign=((info.local-1)%2===0)?-1:1;}else{flowMirrorPairNorm=0;flowMirrorSign=(voiceId%2===0)?1:-1;}
 if(preserveCounterPosition){flowLastX=preservedCounterX;flowLastY=preservedCounterY;}else{flowLastX=point[0];flowLastY=point[1];}
}
function prepareFlowLayout(point,info){
 if(!info)return point;
 var g=info.group,originXKey="flowOriginX"+g,originYKey="flowOriginY"+g;
 if(!flowBaseReady||flowBaseGroup!==g){flowBaseX=info.baseX;flowBaseY=info.baseY;flowBaseGroup=g;flowBaseReady=1;flowLayoutDensity=info.density;flowLayoutGrid=info.grid;flowLayoutTime=now();if(info.local===1){leaders[originXKey]=flowBaseX;leaders[originYKey]=flowBaseY;}}
 var cx=Number(leaders[originXKey]),cy=Number(leaders[originYKey]);if(!isFinite(cx)||!isFinite(cy)){cx=info.leaderX;cy=info.leaderY;}if(!isFinite(cx)||!isFinite(cy)){cx=.5;cy=.5;}
 var t=now(),dt=clamp((t-flowLayoutTime)/1000.,0,.1),a=1-Math.exp(-dt/.25),densityTarget=clamp(info.densityTarget,0,1),gridTarget=clamp(info.gridTarget,0,1);flowLayoutTime=t;flowLayoutDensity+=(densityTarget-flowLayoutDensity)*a;flowLayoutGrid+=(gridTarget-flowLayoutGrid)*a;if(Math.abs(densityTarget-flowLayoutDensity)<.002)flowLayoutDensity=densityTarget;if(Math.abs(gridTarget-flowLayoutGrid)<.002)flowLayoutGrid=gridTarget;
 // Both the free layout and every formation shape share the captured Flow
 // centre. Density can therefore scale only the radius; it can no longer drag
 // the whole swarm from the field centre toward the leader and oppose Flow.
 var gr=flowLayoutGrid,den=flowLayoutDensity,baseOffsetX=flowBaseX-cx,baseOffsetY=flowBaseY-cy,formationOffsetX=(info.formation[0]-.5)+baseOffsetX*.05,formationOffsetY=(info.formation[1]-.5)+baseOffsetY*.05,fx=cx+baseOffsetX*(1-gr)+formationOffsetX*gr,fy=cy+baseOffsetY*(1-gr)+formationOffsetY*gr,densityCenterX=cx,densityCenterY=cy;
 // Counter first cuts the formation into real bands. Density then compresses
 // each band around its own centre instead of collapsing all even bands onto
 // one forward cluster and all odd bands onto one reverse cluster.
 if(flowLatchedMode===1&&flowLatchedLayers>1&&gr>.0001){var bandCenter=counterBandCenter(g,flowLayerIndex);densityCenterX=cx+((bandCenter[0]-.5)+baseOffsetX*.05)*gr;densityCenterY=cy+((bandCenter[1]-.5)+baseOffsetY*.05)*gr;}
 var sc=1-den;
 flowMirrorSpan=.8*sc;
 // At the exact Density endpoint there is no per-voice geometry left. Bypass
 // every local smoothing/history value and use the shared band origin.
 if(densityTarget>=.999)return[densityCenterX,densityCenterY];
 fx=densityCenterX+(fx-densityCenterX)*sc;fy=densityCenterY+(fy-densityCenterY)*sc;
 if(info.pulse!==1){fx=densityCenterX+(fx-densityCenterX)*info.pulse;fy=densityCenterY+(fy-densityCenterY)*info.pulse;}
 return[fx,fy];
}
function flowRawPoint(point,clock,isSpatial,layoutPoint){
 layoutPoint=layoutPoint||point;
 if(flowLatchedMode===2){
  var mirrorAxis=flowDirection*Math.PI/180.,mirrorTX=Math.cos(mirrorAxis),mirrorTY=Math.sin(mirrorAxis),mirrorNX=-mirrorTY*flowMirrorSign,mirrorNY=mirrorTX*flowMirrorSign,mirrorCX=.5+(-mirrorTY)*(flowCenter-.5)*.9,mirrorCY=.5+mirrorTX*(flowCenter-.5)*.9,mirrorOriginX=Number(leaders["flowOriginX"+Math.max(1,flowBaseGroup)]),mirrorOriginY=Number(leaders["flowOriginY"+Math.max(1,flowBaseGroup)]);
  if(!isFinite(mirrorOriginX)||!isFinite(mirrorOriginY)){mirrorOriginX=flowAnchorX;mirrorOriginY=flowAnchorY;}
  // Each sign receives an interleaved half of the complete prepared layout.
  // Translate that layout centre to the mirror axis, but retain every voice's
  // formation offset. Mirror therefore emits two sparse full formations,
  // never two collapsed rows.
  var mirrorOX=mirrorCX+(layoutPoint[0]-mirrorOriginX),mirrorOY=mirrorCY+(layoutPoint[1]-mirrorOriginY),mirrorEdge=Math.max(.0001,portalEdgeDistance(mirrorOX,mirrorOY,mirrorNX,mirrorNY)),mirrorTotal=Math.max(0,clock.distance-flowMirrorStartDistance),mirrorTravel=positiveMod(mirrorTotal,mirrorEdge);
  return[mirrorOX+mirrorNX*mirrorTravel,mirrorOY+mirrorNY*mirrorTravel];
 }
 var sign=flowLatchedMode===1&&flowLayerIndex%2===1?-1:1,g=Math.max(1,flowBaseGroup);
 // The current point and direction define one real line through the square.
 // Its backward intersection A and forward intersection B form a paired
 // portal. Parallel voice offsets cross the B plane individually and return
 // by the single rigid vector A-B; no screen edge is mirrored or paired.
 return flowPortalPoint(g,sign,clock.distance,layoutPoint,0);
}
function blendFlowPoint(base,target,mix){return [wrap01(base[0]+shortestWrappedDelta(base[0],target[0])*mix),wrap01(base[1]+shortestWrappedDelta(base[1],target[1])*mix)];}
function blendFlowMotion(base,raw,mix,dt,returningToBase){
 if(!flowSpatialReady){flowSpatialX=base[0];flowSpatialY=base[1];flowSpatialBaseX=base[0];flowSpatialBaseY=base[1];flowSpatialRawX=raw[0];flowSpatialRawY=raw[1];flowSpatialReady=1;return[wrap01(flowSpatialX),wrap01(flowSpatialY)];}
 var baseDX=shortestWrappedDelta(flowSpatialBaseX,base[0]),baseDY=shortestWrappedDelta(flowSpatialBaseY,base[1]),rawDX=shortestWrappedDelta(flowSpatialRawX,raw[0]),rawDY=shortestWrappedDelta(flowSpatialRawY,raw[1]);
 flowSpatialBaseX=base[0];flowSpatialBaseY=base[1];flowSpatialRawX=raw[0];flowSpatialRawY=raw[1];flowSpatialX+=baseDX*(1-mix)+rawDX*mix;flowSpatialY+=baseDY*(1-mix)+rawDY*mix;
 if(mix>.995){var correctionX=shortestWrappedDelta(wrap01(flowSpatialX),raw[0]),correctionY=shortestWrappedDelta(wrap01(flowSpatialY),raw[1]),correctionA=1-Math.exp(-dt/.18);flowSpatialX+=correctionX*correctionA;flowSpatialY+=correctionY*correctionA;if(Math.abs(correctionX)<.0005)flowSpatialX+=correctionX*(1-correctionA);if(Math.abs(correctionY)<.0005)flowSpatialY+=correctionY*(1-correctionA);}
 // Velocity interpolation alone retains a positional remainder. When Flow is
 // switched off, remove that remainder continuously while the original path
 // keeps moving underneath. The final bypass therefore has no last-frame snap.
 if(returningToBase){var returnX=shortestWrappedDelta(wrap01(flowSpatialX),base[0]),returnY=shortestWrappedDelta(wrap01(flowSpatialY),base[1]),returnA=1-Math.exp(-dt/.3);flowSpatialX+=returnX*returnA;flowSpatialY+=returnY*returnA;}
 return[wrap01(flowSpatialX),wrap01(flowSpatialY)];
}
function counterTransitionPoint(raw,dt){
 if(flowCounterTransitionPending){flowCounterOffsetX=flowLastX-raw[0];flowCounterOffsetY=flowLastY-raw[1];flowCounterRawX=raw[0];flowCounterRawY=raw[1];flowCounterTransitionPending=0;flowCounterTransition=1;return[flowLastX,flowLastY];}
 if(!flowCounterTransition)return raw;
 // A portal recycle is a mathematical jump of the raw display coordinate.
 // Add its inverse to the temporary offset so the visible transition remains
 // continuous while the offset itself decays toward the new Counter route.
 var jumpX=raw[0]-flowCounterRawX,jumpY=raw[1]-flowCounterRawY;if(Math.sqrt(jumpX*jumpX+jumpY*jumpY)>.25){flowCounterOffsetX-=jumpX;flowCounterOffsetY-=jumpY;}
 flowCounterRawX=raw[0];flowCounterRawY=raw[1];var decay=Math.exp(-dt/.45);flowCounterOffsetX*=decay;flowCounterOffsetY*=decay;
 if(Math.sqrt(flowCounterOffsetX*flowCounterOffsetX+flowCounterOffsetY*flowCounterOffsetY)<.0005){flowCounterOffsetX=0;flowCounterOffsetY=0;flowCounterTransition=0;return raw;}
 return[raw[0]+flowCounterOffsetX,raw[1]+flowCounterOffsetY];
}
function flowLayer(spatial,acoustic,allowed,layoutInfo){
 var clock=updateFlowClock(voiceId===1),t=now(),last=flowTime||t,dt=clamp((t-last)/1000.,0,.1);flowTime=t,target=flowAmount*clamp(allowed,0,1),spatialTau=target<flowMix?.3:.35,soundTau=target<flowSoundMix?.38:.85;
 flowMix+=(target-flowMix)*(1-Math.exp(-dt/spatialTau));flowSoundMix+=(target-flowSoundMix)*(1-Math.exp(-dt/soundTau));
 if(Math.abs(target-flowMix)<.002)flowMix=target;
 var counterDirectionChanged=flowEngaged&&flowMode===1&&Math.abs(Math.atan2(Math.sin((flowDirection-flowLatchedDirection)*Math.PI/180.),Math.cos((flowDirection-flowLatchedDirection)*Math.PI/180.)))>1e-9;
 if((!flowEngaged&&target>.0001)||(flowEngaged&&(flowLatchedMode!==flowMode||flowLatchedLayers!==flowLayers||counterDirectionChanged)))captureFlow(spatial,clock,layoutInfo);
 if(flowEngaged&&flowSeenStructureRevision!==flowStructureRevision)flowSeenStructureRevision=flowStructureRevision;
 // The acoustic coordinate receives the same continuous physical Flow motion
 // exactly once. Visible edge recycling and structural GUI edits are excluded;
 // the existing downstream speed analyser remains the only speed-to-gain law.
 if(!flowSoundReady){flowSoundX=acoustic[0];flowSoundY=acoustic[1];flowSoundBaseX=acoustic[0];flowSoundBaseY=acoustic[1];flowSoundReady=1;}
 var baseDX=acoustic[0]-flowSoundBaseX,baseDY=acoustic[1]-flowSoundBaseY;flowSoundBaseX=acoustic[0];flowSoundBaseY=acoustic[1];
 var soundAngle=clock.angle,soundSign=1;if(flowLatchedMode===1&&flowLayerIndex%2===1)soundSign=-1;if(flowLatchedMode===2){soundAngle+=Math.PI*.5;soundSign=flowMirrorSign;}
 var offsetVector=flowOffsetVector(clock,flowLatchedMode),offsetStepX=0,offsetStepY=0;if(flowLatchedMode===2){flowOffsetSoundReady=0;}else if(!flowOffsetSoundReady){flowOffsetSoundX=offsetVector[0];flowOffsetSoundY=offsetVector[1];flowOffsetSoundReady=1;}else{offsetStepX=offsetVector[0]-flowOffsetSoundX;offsetStepY=offsetVector[1]-flowOffsetSoundY;flowOffsetSoundX=offsetVector[0];flowOffsetSoundY=offsetVector[1];}
 var physicalStep=clock.speed*FLOW_SPEED_UNIT*dt,baseWeight=1-flowSoundMix;flowSoundX+=baseDX*baseWeight+(Math.cos(soundAngle)*physicalStep*soundSign+offsetStepX)*flowSoundMix;flowSoundY+=baseDY*baseWeight+(Math.sin(soundAngle)*physicalStep*soundSign+offsetStepY)*flowSoundMix;
 var soundPoint=[flowSoundX,flowSoundY];
 if(target<.0001&&flowMix<.0005&&flowSoundMix<.0005){flowMix=0;flowSoundMix=0;flowEngaged=0;flowLatchedMode=-1;flowBaseReady=0;flowSpatialReady=0;return [spatial,soundPoint];}
 if(!flowEngaged)return [spatial,soundPoint];
 var layoutPoint=layoutInfo?prepareFlowLayout(spatial,layoutInfo):[flowAnchorX,flowAnchorY],visualOffset=flowOffsetVector(clock,flowLatchedMode);layoutPoint=[layoutPoint[0]+visualOffset[0],layoutPoint[1]+visualOffset[1]];var sr=flowRawPoint(spatial,clock,1,layoutPoint),pureUniform=flowLatchedMode!==2&&flowAmount>=.999&&clamp(allowed,0,1)>=.999,s;
 if(pureUniform){s=flowLatchedMode===1?counterTransitionPoint(sr,dt):sr;flowSpatialX=s[0];flowSpatialY=s[1];flowSpatialBaseX=spatial[0];flowSpatialBaseY=spatial[1];flowSpatialRawX=sr[0];flowSpatialRawY=sr[1];flowSpatialReady=1;}
 else s=flowLatchedMode===2?blendFlowPoint(spatial,sr,flowMix):blendFlowMotion(spatial,sr,flowMix,dt,target<.0001);
 flowLastX=s[0];flowLastY=s[1];return [s,soundPoint];
}
function compute(x,y,c){
 var baseMoved=!waveRawReady||Math.abs(x-waveRawX)>1e-7||Math.abs(y-waveRawY)>1e-7;waveRawX=x;waveRawY=y;waveRawReady=1;
 var g=groupFor(voiceId,c),local=localIndex(voiceId,c),n=members(g,c,voiceCount);smoothMorph(g);
 if(local===1){leaders["x"+g]=x;leaders["y"+g]=y;leaders["v"+g]=1;if(lastLeaderGroup!==g){resetHistory(g,x,y);lastLeaderGroup=g;}recordHistory(g,x,y);}
 var fg=formationGeometry(local,n,g),fp=formationPoint(fg,formShapes[g]),fpa=formationPoint(fg,formShapeCurrent[g]),fpaBefore=formationPoint(fg,formShapeBefore[g]),lx=Number(leaders["x"+g]),ly=Number(leaders["y"+g]),valid=leaders["v"+g]&&isFinite(lx)&&isFinite(ly);updateAlignment(g,x,y,lx,ly,valid);
 var densityLX=lx,densityLY=ly;
 var alignedSpatial=alignedPoint(x,y,lx,ly,alignmentSpatial[g],g,valid),alignedAcoustic=alignedPoint(x,y,lx,ly,alignmentSound[g],g,valid);
 var spatial=mapFormation(alignedSpatial[0],alignedSpatial[1],fp,grids[g],densities[g],densityLX,densityLY,valid),acousticBeforeShape=mapFormation(alignedAcoustic[0],alignedAcoustic[1],fpaBefore,gridCurrent[g],densityCurrent[g],densityLX,densityLY,valid),acoustic=mapFormation(alignedAcoustic[0],alignedAcoustic[1],fpa,gridCurrent[g],densityCurrent[g],densityLX,densityLY,valid);formShapeBiasX[g]+=acousticBeforeShape[0]-acoustic[0];formShapeBiasY[g]+=acousticBeforeShape[1]-acoustic[1];acoustic=[acoustic[0]+formShapeBiasX[g],acoustic[1]+formShapeBiasY[g]];
 var ps=pulseScale(g,local,n);spatial=applyPulse(spatial,lx,ly,ps,valid);acoustic=applyPulse(acoustic,lx,ly,ps,valid);spatial=applyEscape(spatial,g,lx,ly,valid);acoustic=applyEscape(acoustic,g,lx,ly,valid);
 var sm=updateSnakeMix(g),spatialStep=.002+snakeSpacing[g]*.0005,soundStep=.002+snakeSpacingSound[g]*.0005,spatialTrail=local<=1?[x,y]:snakeTrailTarget(g,local,spatialStep,snakeDeviationSpatial[g]),soundTrail=local<=1?[x,y]:snakeTrailTarget(g,local,soundStep,snakeDeviationSound[g]);
 spatial=applySnake(spatial,spatialTrail,sm);acoustic=applySnake(acoustic,soundTrail,sm);spatial=applyPortal(spatial,x,y,0);acoustic=applyPortal(acoustic,x,y,1);
 // Landing replaces every primary movement above, while those systems retain
 // their internal state. The wave is intentionally applied afterwards.
 spatial=landingPosition(spatial,1);acoustic=landingPosition(acoustic,0);
 // Snake and Collective Landing are exclusive primary movement modes.
 // Their smoothed mode mixes also remove/reintroduce Flocking without a jump.
 var exclusiveMix=Math.max(sm,landingMix),flockAllowed=exclusiveMix>.995?0:1-exclusiveMix,flocked=flockingLayer(spatial,acoustic,g,flockAllowed);spatial=flocked[0];acoustic=flocked[1];
 var flowExclusive=Math.max(sm,landingMix,portalMix),flowAllowed=flowExclusive>.995?0:(flowExclusive<.005?1:1-flowExclusive),flowLayout={group:g,local:local,count:n,baseX:alignedSpatial[0],baseY:alignedSpatial[1],leaderX:densityLX,leaderY:densityLY,formation:fpa,grid:gridCurrent[g],density:densityCurrent[g],gridTarget:grids[g],densityTarget:densities[g],pulse:ps},flowed=flowLayer(spatial,acoustic,flowAllowed,flowLayout);spatial=flowed[0];acoustic=flowed[1];
 if(local===1){leaders["waveX"+g]=spatial[0];leaders["waveY"+g]=spatial[1];}
 var wx=Number(leaders["waveX"+g]),wy=Number(leaders["waveY"+g]),wv=isFinite(wx)&&isFinite(wy);updateWave(g,baseMoved);
 spatial=waveDisplace(spatial,g,wx,wy,wv,0);acoustic=waveDisplace(acoustic,g,wx,wy,wv,1);
 return[spatial,acoustic];
}
function process(x,y){if(!isFinite(x)||!isFinite(y))return;var targets=compute(x,y,swarmCount),spatial=targets[0],acoustic=targets[1],t=clamp((now()-transitionStart)/transitionMs,0,1);if(t<1){var splitEase=t*t*(3-2*t);spatial=[transitionX+(spatial[0]-transitionX)*splitEase,transitionY+(spatial[1]-transitionY)*splitEase];acoustic=[transitionSoundX+(acoustic[0]-transitionSoundX)*splitEase,transitionSoundY+(acoustic[1]-transitionSoundY)*splitEase];}lastX=spatial[0];lastY=spatial[1];lastSoundX=acoustic[0];lastSoundY=acoustic[1];outlet(0,lastX,lastY);outlet(1,lastSoundX,lastSoundY);}
