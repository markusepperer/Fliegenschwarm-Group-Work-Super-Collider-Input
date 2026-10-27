const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const {MaxGraph}=require('./max_native_graph.cjs');const root=path.resolve(__dirname,'..'),pre='FSC_20261026_';
const patch=n=>JSON.parse(fs.readFileSync(path.join(root,'patchers',pre+n+'.maxpat'),'utf8')).patcher;
let now=1000;const voices=[];
function analyzer(out){
 class Clock extends Date{static now(){return now;}}
 const c={Date:Clock,inlet:0,jsarguments:[],arrayfromargs:a=>Array.from(a),outlet:out};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'code',pre+'bio_maneuver.js'),'utf8'),c);return c;
}
for(let id=1;id<=50;id++){
 const v={xy:[],speed:[],reset:0,internal:[]};v.analysis=analyzer((i,x)=>{if(i===4)v.speed.push(x);});
 v.graph=new MaxGraph(patch('SC_PositionSource'),(i,m)=>{
  if(i===0)v.xy.push(m.slice());if(i===1){v.analysis.inlet=0;v.analysis.list(...m);}if(i===2){v.analysis.inlet=1;v.analysis.list(...m);}
  if(i===3)v.internal.push(m);if(i===4){v.reset++;v.analysis[m[0]]();}
 },()=>now);v.graph.initialize();v.graph.input(0,['voiceid',id]);voices[id]=v;
 // Internal coordinates must flow immediately after opening, before touching the switch.
 v.graph.input(1,[.3,.4]);assert.deepEqual(v.xy.at(-1),[.3,.4]);
}
const mainPatch=patch('Fliegenschwarm_Poly_Test');let polyTarget=17,clockRunning=false,accepted=0;
const used=new Set(['sc-valid','sc-address','sc-controls','sc-modeorder','sc-modebroadcast','sc-clock','sc-tick','sc-state','poly']);
const mainGraph={...mainPatch,boxes:mainPatch.boxes.filter(q=>used.has(q.box.id)),lines:mainPatch.lines.filter(q=>used.has(q.patchline.source[0])&&used.has(q.patchline.destination[0]))};
const main=new MaxGraph(mainGraph,()=>{},()=>now,{poly:(inlet,m)=>{
 assert.equal(m[0],'setvalue');const id=m[1],payload=m.slice(2);accepted++;
 if(id===0)for(let i=1;i<=50;i++)voices[i].graph.input(0,payload);else voices[id].graph.input(0,payload);
 assert.equal(polyTarget,17,'OSC must not change the old poly target');
}});
const control=(name,...v)=>main.send('sc-controls',0,[name,...v]);
const fly=(...v)=>main.send('sc-valid',0,v);
const tick=()=>{now+=10;for(let id=1;id<=50;id++)voices[id].graph.due();main.send('sc-tick',0,['bang']);};
control('state',50,50,1);control('source',1);
const initial=voices.slice(1).map(v=>v.xy.at(-1).slice());
assert.equal(new Set(initial.map(x=>x.join(':'))).size,50);
const geom={Global:function(){return {};},jsarguments:[],outlet:()=>{},arrayfromargs:a=>Array.from(a)};
vm.createContext(geom);vm.runInContext(fs.readFileSync(path.join(root,'code',pre+'swarm_attractor.js'),'utf8'),geom);
for(let id=1;id<=50;id++){
 const expected=geom.formationPoint(geom.staticFormationGeometry(id,50),0);
 assert(initial[id-1].every((x,i)=>Math.abs(x-expected[i])<1e-12),'Circle mismatch for voice '+id);
}

for(let id=1;id<=50;id++){
 const v=voices[id],n=v.xy.length,r=v.reset;v.graph.input(1,[.99,.99]);v.graph.input(2,[.99,.99]);v.graph.input(3,[0,1,1,1,now]);v.graph.input(4,['reset']);
 assert.equal(v.xy.length,n);assert.equal(v.reset,r);fly(id,.2+id*.005,.3);
}
tick();for(let id=1;id<=50;id++){assert.deepEqual(voices[id].xy.at(-1),[.2+id*.005,.3]);assert.equal(voices[id].speed.at(-1),0);}
fly(1,.206,.3);tick();assert(Math.abs(voices[1].speed.at(-1)-.14)<1e-9);
fly(1,.206,.301);tick();assert(Math.abs(voices[1].speed.at(-1)-.2)<1e-9);
control('state',50,2,1);const held=voices[3].xy.at(-1).slice();fly(3,.9,.9);tick();assert.deepEqual(voices[3].xy.at(-1),held);assert.equal(voices[3].speed.at(-1),0);
control('state',50,3,1);tick();assert.deepEqual(voices[3].xy.at(-1),[.9,.9]);assert.equal(voices[3].speed.at(-1),0);
control('state',2,2,1);const n=voices[3].xy.length;fly(3,.8,.8);tick();assert.equal(voices[3].xy.length,n);
control('state',3,3,1);tick();assert.deepEqual(voices[3].xy.at(-1),[.8,.8]);assert.equal(voices[3].speed.at(-1),0);
const before=accepted;for(const a of [[0,.5,.5],[51,.5,.5],[1.1,.5,.5],[1,NaN,.5],[1,Infinity,.5],[1,-.1,.5],[1,.5,1.1],['1',.5,.5],[1,.5,.5,9],[1,.5],[1,'bad',.5]])fly(...a);
assert.equal(accepted,before,'Invalid packet must not reach poly~');fly(1,.3,.4);assert.equal(accepted,before+1,'Valid data after invalid input must pass');
for(let i=0;i<30;i++)tick();fly(1,.8,.1);tick();assert.equal(voices[1].speed.at(-1),0);
control('state',3,3,0);const stopped=voices[1].xy.at(-1).slice();fly(1,.1,.9);tick();assert.deepEqual(voices[1].xy.at(-1),stopped);
control('state',3,3,1);tick();assert.deepEqual(voices[1].xy.at(-1),[.1,.9]);assert.equal(voices[1].speed.at(-1),0);
control('source',0);for(let id=1;id<=50;id++){voices[id].graph.input(1,[.4,.6]);assert.deepEqual(voices[id].xy.at(-1),[.4,.6]);}
control('source',1);for(let id=1;id<=50;id++)assert.deepEqual(voices[id].xy.at(-1),initial[id-1]);
control('state',50,50,1);let stressMessages=0;
for(let frame=0;frame<200;frame++){
 for(let id=1;id<=50;id++){fly(id,.5+.3*Math.cos(frame*.002+id),.5+.3*Math.sin(frame*.002+id));stressMessages++;}tick();
 for(let id=1;id<=50;id++){assert(voices[id].xy.at(-1).every(Number.isFinite));assert(Number.isFinite(voices[id].speed.at(-1)));}
}
const history=[];const h=new MaxGraph(patch('SC_XYHistory'),(i,m)=>history.push([i,...m]),()=>now);h.initialize();history.length=0;h.input(1,['reset']);h.input(0,[.9,.1]);
assert.deepEqual(history.map(x=>x[0]),[1,2,0,0,1]);assert.equal(history.at(-1)[1],1);h.input(0,[.8,.1]);assert.equal(history.at(-1)[0],0);
// No hidden OSC registration, JavaScript distributor or per-voice dynamic bus remains.
for(const file of ['external_swarm','position_source','xy_history'])assert(!fs.existsSync(path.join(root,'code',pre+file+'.js')));
for(const f of fs.readdirSync(path.join(root,'patchers')).filter(n=>n.endsWith('.maxpat')))assert(!fs.readFileSync(path.join(root,'patchers',f),'utf8').includes('external_registry'));
console.log(JSON.stringify({status:'PASS',nativeMaxObjects:true,voices:50,internalWorksBeforeSwitch:true,sourceBypass:true,holdAndResume:true,invalidPacketsRejected:true,packetGapRebase:true,polyTargetPreserved:true,stressMessages,registryRemoved:true,nativeMaxRuntime:false},null,2));
