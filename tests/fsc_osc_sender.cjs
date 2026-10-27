const fs=require('fs'),path=require('path'),assert=require('assert');
const {MaxGraph}=require('./max_native_graph.cjs');
const root=path.resolve(__dirname,'..');
const p=JSON.parse(fs.readFileSync(path.join(root,'patchers/FSC_20261026_OSC_Testsender.maxpat'),'utf8')).patcher;
let now=0,g;const packets=[];let accepted=0;
const receiver=JSON.parse(fs.readFileSync(path.join(root,'patchers/FSC_20261026_Fliegenschwarm_Poly_Test.maxpat'),'utf8')).patcher;
const validation=new MaxGraph(receiver.boxes.find(q=>q.box.id==='sc-valid').box.patcher,(i,m)=>{assert.equal(i,0);accepted++;assert(m.length===3);},()=>now);
const hooks={
 'send-ui':(inlet,m)=>g.emit('send-ui',0,m),
 'speed-ui':(inlet,m)=>g.emit('speed-ui',0,m),
 'once-ui':()=>g.emit('once-ui',0,['bang']),
 'last-message':()=>{},
 udp:(inlet,m)=>{assert.equal(m[0],'/fly');assert.equal(m.length,4);assert(Number.isInteger(m[1])&&m[1]>=1&&m[1]<=50);assert(m.slice(2).every(x=>Number.isFinite(x)&&x>=0&&x<=1));packets.push(m);validation.input(0,m.slice(1));}
};
g=new MaxGraph(p,()=>{},()=>now,hooks);g.initialize();assert.equal(packets.length,0,'Must not transmit automatically');assert(!g.states.get('clock').running);
g.send('once-ui',0,['bang']);assert.equal(packets.length,50);assert.deepEqual(packets.map(x=>x[1]),Array.from({length:50},(_,i)=>i+1));
const first=packets.slice();g.send('send-ui',0,[1]);
for(let frame=0;frame<1000;frame++){now+=10;if(g.states.get('clock').running)g.emit('clock',0,['bang']);}
assert.equal(packets.length,50050);assert.equal(accepted,packets.length);
for(let id=1;id<=50;id++)assert.notDeepEqual(packets.at(-51+id).slice(2),first[id-1].slice(2));
g.send('send-ui',0,[0]);const stopped=packets.length;now+=1000;if(g.states.get('clock').running)g.emit('clock',0,['bang']);assert.equal(packets.length,stopped);
// Speed changes affect phase increments, not the already reached position.
const step=()=>{now+=10;g.emit('clock',0,['bang']);};
g.send('speed-ui',0,[0]);const countBeforeEdit=packets.length;const heldPhase=g.states.get('phase-add').value;
assert.equal(packets.length,countBeforeEdit);step();const held=packets.slice(-50).map(m=>m.slice(2));step();
assert.deepEqual(packets.slice(-50).map(m=>m.slice(2)),held);assert.equal(g.states.get('phase-add').value,heldPhase);
for(const speed of [.25,1,4,20]){
 g.send('speed-ui',0,[speed]);const before=g.states.get('phase-add').value;step();assert(Math.abs(g.states.get('phase-add').value-before-speed)<1e-9);
 const phase=g.states.get('phase-add').value*.01;
 for(let id=1;id<=50;id++){
  const m=packets[packets.length-51+id];
  assert(Math.abs(m[2]-(.5+.35*Math.sin((.27+(id%7)*.017)*phase+id*.47)))<1e-12);
  assert(Math.abs(m[3]-(.5+.35*Math.sin((.19+(id%11)*.013)*phase+id*.71+1.2)))<1e-12);
 }
}
g.send('speed-ui',0,[100]);assert.equal(g.states.get('frame').value,20);g.send('speed-ui',0,[-1]);assert.equal(g.states.get('frame').value,0);
const udp=p.boxes.find(q=>q.box.id==='udp').box;assert.equal(udp.text,'udpsend 127.0.0.1 9000');
const listen=receiver.boxes.find(q=>q.box.id==='sc-udp').box.text;assert.equal(listen,'udpreceive 9000');
console.log(JSON.stringify({status:'PASS',ids:50,updatesPerSecondPerId:100,simulatedSeconds:10,validatedPackets:accepted,speedControl:true,zeroHoldsPosition:true,speedChangeWithoutPhaseJump:true,startStop:true,singleBatch:true,autoTransmit:false,receiverValidation:'PASS',nativeMaxUdpTest:false},null,2));
