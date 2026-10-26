const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..'),prefix='FSC_20261026_';
let now=1000,router,manager,selected=0;const registry={},voices=[],commands=[];
function send(c,name,args){c.inlet=0;if(typeof c[name]==='function')return c[name](...args);c.messagename=name;c.anything(...args);}
function load(name,args=[],out=()=>{}){
 function Task(){this.schedule=this.cancel=this.freepeer=this.repeat=()=>{};}
 class Clock extends Date{static now(){return now;}getTime(){return now;}}
 const c={Date:Clock,Task,Global:function(){return {};},jsarguments:[prefix+name+'.js',...args],inlet:0,arrayfromargs:a=>Array.from(a),outlet:out,
 messnamed:(bus,name,...values)=>{if(bus===prefix+'external_registry')send(router,name,values);else if(registry[bus])send(registry[bus],name,values);},error:()=>{}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'code',prefix+name+'.js'),'utf8'),c);return c;
}
router=load('external_swarm');
for(let id=1;id<=50;id++){
 const v={xy:[],speed:[],turn:[],internal:[],reset:0,meta:[]};
 v.analyzer=load('bio_maneuver',[],(i,value)=>{if(i===4)v.speed.push(value);if(i===1)v.turn.push(value);});
 v.source=load('position_source',[10000+id],(i,...args)=>{
  const a=Array.isArray(args[0])?args[0]:args;
  if(i===0)v.xy.push(a);
  if(i===1){v.analyzer.inlet=0;v.analyzer.list(...a);}
  if(i===2){v.meta=a;v.analyzer.inlet=1;v.analyzer.list(...a);}
  if(i===3)v.internal.push(a);
  if(i===4){v.reset++;v.analyzer.reset();}
 });
 registry[(10000+id)+prefix+'external_position']=v.source;voices[id]=v;
 v.source.voiceid(id);
}
manager=load('swarm_voice_count',[],(i,...a)=>{
 if(i===3)send(router,a[0],a.slice(1));
 if(i!==0)return;
 if(Array.isArray(a[0]))a=a[0];if(a[0]==='target'){selected=a[1];return;}
 commands.push(a);
 if(selected&&voices[selected])send(voices[selected].source,a[0],a.slice(1));
});
function msg(name,...a){manager.inlet=1;manager.messagename=name;manager.anything(...a);}
function drain(){for(let i=0;i<300&& (manager.pendingEntry||manager.deliveryQueue.length);i++)manager.deliverNext();assert(!manager.pendingEntry&&!manager.deliveryQueue.length);}
manager.initialized=true;manager.setCount(50);msg('moving',50);drain();
msg('external',1);drain();assert.equal(router.enabled,1);
for(let id=1;id<=50;id++){
 const v=voices[id];assert.deepEqual(v.xy.at(-1),router.initialPosition(id));assert.equal(v.source.externalMode,1);
 // Hostile internal output, metadata and analyzer resets cannot leak through.
 const before={n:v.xy.length,r:v.reset};
 for(let inlet=1;inlet<=3;inlet++){v.source.inlet=inlet;v.source.list(.99,.99,1,1,now);}
 v.source.inlet=4;v.source.messagename='reset';v.source.anything();
 assert.equal(v.xy.length,before.n);assert.equal(v.reset,before.r);
 router.fly(id,.2+id*.005,.3);
}
now+=10;router.tick();
for(let id=1;id<=50;id++){assert.deepEqual(voices[id].xy.at(-1),[.2+id*.005,.3]);assert.equal(voices[id].speed.at(-1),0);}
// A 0.001 X displacement in 10 ms is .14 m/s in a 1.40m-wide field.
now+=10;router.fly(1,.206,.3);router.tick();assert(Math.abs(voices[1].speed.at(-1)-.14)<1e-9);
now+=10;router.fly(1,.206,.301);router.tick();assert(Math.abs(voices[1].speed.at(-1)-.2)<1e-9);
// Use the existing manager's Moving control; held voices still receive zero-motion frames.
msg('moving',2);drain();const held=voices[3].xy.at(-1).slice();
now+=10;router.fly(3,.9,.9);router.tick();assert.deepEqual(voices[3].xy.at(-1),held);assert.equal(voices[3].speed.at(-1),0);
msg('moving',3);drain();now+=10;router.tick();assert.deepEqual(voices[3].xy.at(-1),[.9,.9]);assert.equal(voices[3].speed.at(-1),0);
manager.setCount(2);drain();const n=voices[3].xy.length;now+=10;router.fly(3,.8,.8);router.tick();assert.equal(voices[3].xy.length,n);
manager.setCount(3);msg('moving',3);drain();now+=10;router.tick();assert.deepEqual(voices[3].xy.at(-1),[.8,.8]);assert.equal(voices[3].speed.at(-1),0);
// Invalid input and packet gaps never create a new location or a synthetic burst.
const valid=router.latest[1].slice();for(const a of [[0,.5,.5],[51,.5,.5],[1.1,.5,.5],[1,NaN,.5],[1,Infinity,.5],[1,-.1,.5],[1,.5,1.1],['1',.5,.5],[1,.5,.5,9]])router.fly(...a);
assert.deepEqual(router.latest[1],valid);
now+=1000;router.tick();now+=10;router.fly(1,.8,.1);router.tick();assert.equal(voices[1].speed.at(-1),0);
msg('stop');drain();const stopped=voices[1].xy.at(-1).slice();now+=10;router.fly(1,.1,.9);router.tick();assert.deepEqual(voices[1].xy.at(-1),stopped);
msg('start');drain();now+=10;router.tick();assert.deepEqual(voices[1].xy.at(-1),[.1,.9]);assert.equal(voices[1].speed.at(-1),0);
msg('external',0);drain();assert.equal(router.enabled,0);assert.equal(voices[1].source.externalMode,0);
const internalCount=voices[1].xy.length;voices[1].source.inlet=1;voices[1].source.list(.4,.6);assert.equal(voices[1].xy.length,internalCount+1);
assert.deepEqual(voices[1].xy.at(-1),[.4,.6]);
msg('external',1);drain();for(let id=1;id<=50;id++)assert.deepEqual(voices[id].xy.at(-1),router.initialPosition(id));
// Repositioning mutes the legacy delta and direction outputs while priming their histories.
const history=[];const h=load('xy_history',[],(i,...a)=>history.push([i,...a]));h.reset();h.list(.9,.1);
assert.deepEqual(history.map(x=>x[0]),[1,2,1,0,0,1]);assert.equal(history.at(-1)[1],1);
// 50 voices at 100 Hz for a simulated minute, through the actual router and analyzers.
manager.setCount(50);msg('moving',50);drain();
let stressMessages=0;
for(let frame=0;frame<6000;frame++){
 now+=10;
 for(let id=1;id<=50;id++){router.fly(id,.5+.3*Math.cos(frame*.002+id),.5+.3*Math.sin(frame*.002+id));stressMessages++;}
 router.tick();
 if(frame%100===0)for(let id=1;id<=50;id++){
  assert(voices[id].xy.at(-1).every(Number.isFinite));assert(Number.isFinite(voices[id].speed.at(-1)));
  voices[id].xy.length=0;voices[id].speed.length=0;voices[id].turn.length=0;
 }
}
// Registration after a switch initializes a voice before accepting its live coordinates.
let late=[];registry['99999'+prefix+'external_position']={external:x=>late.push(['external',x]),externalpos:(...x)=>late.push(['pos',...x])};router.register(50,99999);
assert.equal(late[0][1],1);assert.deepEqual(late[1].slice(1,3),router.positions[50]);
// The fixed layout exactly matches the existing circular geometry with no rotation.
const attractor=load('swarm_attractor',[0]);

for(let id=1;id<=50;id++){
 const g=attractor.staticFormationGeometry(id,50),p=attractor.formationPoint(g,0);
 assert.deepEqual(router.initialPosition(id),p);
}
// Saved patch wiring must route all three selected streams, and OSC must
// enter through the one shared receiver without using poly~ target messages.
const patch=name=>JSON.parse(fs.readFileSync(path.join(root,'patchers',prefix+name+'.maxpat'))).patcher;
const main=patch('Fliegenschwarm_Poly_Test'),bio=patch('MS_Bio_Trajektorien');
const has=(p,s,so,d,di)=>p.lines.some(q=>{const l=q.patchline;return l.source[0]===s&&l.source[1]===so&&l.destination[0]===d&&l.destination[1]===di;});
assert(has(main,'sc-udp',0,'sc-route',0));assert(has(main,'sc-route',0,'sc-fly-pre',0));assert(has(main,'sc-fly-pre',0,'sc-router',0));
assert(has(main,'voicecount-js',3,'sc-router',0));assert(has(main,'sc-source-button',0,'sc-source-pre',0));
assert(has(bio,'in',0,'sc-source',0));assert(has(bio,'sc-source',3,'swarm-route',0));
assert(has(bio,'swarm-attractor',0,'sc-source',1));assert(has(bio,'swarm-attractor',1,'sc-source',2));assert(has(bio,'js',3,'sc-source',3));
for(const q of bio.lines){const l=q.patchline;if(['swarm-attractor','js'].includes(l.source[0]))assert(!['obj-3','out','maneuver_js','maneuver_meta_send'].includes(l.destination[0]));}
h.rebase();assert.equal(history.at(-1)[0],2);
console.log(JSON.stringify({status:'PASS',voices:50,initialCircleMatchesExistingGeometry:true,
 sourceBypass:true,maxCountAndMovingControls:true,rebaseWithoutSpeedSpikes:true,
 fieldDimensionsMeters:[1.4,2],invalidMessagesIgnored:true,packetGapRecovery:true,
 switchBackToInternal:true,lateRegistration:true,stressMessages,simulatedSeconds:60,nativeMaxTest:false},null,2));
