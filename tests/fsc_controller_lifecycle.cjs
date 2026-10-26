const fs=require('fs'),vm=require('vm'),path=require('path'),assert=require('assert');
const root=path.resolve(__dirname,'..'),tasks=[];let now=0,target=0;const states={},events=[];
function Task(fn,self){this.due=null;this.schedule=ms=>this.due=now+ms;this.cancel=()=>this.due=null;this.freepeer=()=>{};this.run=()=>fn.call(self);tasks.push(this);}
const c={Task,inlet:0,jsarguments:[],arrayfromargs:a=>Array.from(a),outlet:(i,...args)=>{
 if(i!==0)return;if(Array.isArray(args[0]))args=args[0];
 if(args[0]==='target'){target=args[1];return;}
 events.push({time:now,target,args});if(target>0){states[target]??={};states[target][args[0]]=args.slice(1);}
}};vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'code/FSC_20261026_swarm_voice_count.js'),'utf8'),c);
function drain(){for(let count=0;count<10000;count++){const due=tasks.filter(t=>t.due!==null).sort((a,b)=>a.due-b.due);if(!due.length)return;const t=due[0];now=t.due;t.due=null;t.run();}throw Error('queue never drains');}
function msg(name,...args){c.inlet=1;c.messagename=name;c.anything(...args);}
c.setCount(2);drain();msg('mode',1);msg('tempo',2);msg('first',20);msg('last',40);msg('moving',2);drain();
c.setCount(3);drain();
for(const key of ['mode','tempo','first','last']) assert.deepEqual(states[3][key],states[1][key],key);
// Individual edits survive disabling/re-enabling, and do not change other voices.
msg('target',3);msg('tempo',3);msg('mode',0);drain();
msg('target',0);c.setCount(2);drain();c.setCount(3);drain();
assert.deepEqual(states[3].tempo,[3]);assert.deepEqual(states[3].mode,[0]);
assert.deepEqual(states[1].tempo,[2]);assert.equal(c.currentMode,1);
// A newer global edit also reaches inactive voices when they return.
c.setCount(2);drain();msg('tempo',4);msg('loop',0);drain();c.setCount(4);drain();
assert.deepEqual(states[3].tempo,[4]);assert.deepEqual(states[4].loop,[0]);
// Subswarm tempo settings reach future members without replacing other groups.
msg('swarms',2);msg('swarmtarget',2);msg('tempo',1.25);drain();c.setCount(6);drain();
assert.deepEqual(states[5].tempo,[4]);assert.deepEqual(states[6].tempo,[1.25]);
msg('swarmtarget',0);

c.setCount(50);msg('moving',50);drain();assert.equal(Object.values(states).filter(s=>s.active?.[0]===1).length,50);assert(c.voiceActive.slice(1).every(Boolean));
msg('stop');drain();assert.equal(c.swarmRunning,false);
c.setCount(0);drain();assert(c.voiceActive.slice(1).every(v=>!v));
c.setCount(50);msg('moving',50);c.setCount(12);msg('moving',5);drain();assert.equal(c.voiceActive.slice(1).filter(Boolean).length,12);assert.equal(c.movingCount,5);
console.log(JSON.stringify({flightSettingsInherited:true,individualOverridesPreserved:true,inactiveGlobalUpdates:true,subswarmInheritance:true,activationStopReactivation:true,rapidCountChanges:true,events:events.length,nativeMax:false}));
