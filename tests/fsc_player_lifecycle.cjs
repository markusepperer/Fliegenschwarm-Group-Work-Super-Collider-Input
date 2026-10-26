const fs=require('fs'),path=require('path'),vm=require('vm'),assert=require('assert');
const root=path.resolve(__dirname,'..'),prefix='FSC_20261026_';
let now=0,basenameLookups=0,opened=0;
function context(script,outerPath,depth=0){
 function File(filename,mode){
  // Reproduce native Max: a loaded JS file need not be reopenable by basename.
  if(!filename.includes('/')){basenameLookups++;this.isopen=false;return;}
  let resolved=filename.replace(/^Macintosh HD:/,'');
  resolved=path.resolve(resolved);
  assert(resolved.startsWith(root+path.sep),'Access outside own project: '+resolved);
  opened++;this.isopen=mode==='write'||fs.existsSync(resolved);this.position=0;
  this.data=this.isopen&&mode==='read'?fs.readFileSync(resolved,'utf8'):'';
  this.eof=this.data.length;
  this.readchars=n=>{let s=this.data.slice(this.position,this.position+n);this.position+=s.length;return s.split('');};
  this.readstring=n=>this.readchars(n).join('');this.writechars=()=>{};this.close=()=>{};
 }
 function Task(){this.cancel=this.schedule=this.freepeer=this.repeat=()=>{};}
 class Clock extends Date{static now(){return now;}getTime(){return now;}}
 let patcher={filepath:outerPath};
 for(let i=0;i<depth;i++)patcher={filepath:'',parentpatcher:patcher};
 const output=[],errors=[];
 const c={File,Task,Date:Clock,patcher,inlet:0,jsarguments:[prefix+script+'.js','10001'],
  arrayfromargs:a=>Array.from(a),outlet:(...a)=>output.push(a),error:s=>errors.push(String(s)),post:()=>{}};
 vm.createContext(c);vm.runInContext(fs.readFileSync(path.join(root,'code',prefix+script+'.js'),'utf8'),c);
 c._output=output;c._errors=errors;return c;
}
const abstraction=path.join(root,'patchers',prefix+'MS_Bio_Trajektorien.maxpat');
let transitions=0,positions=0;
for(let voice=1;voice<=50;voice++){
 now=0;
 const c=context('bio_trajektorien',abstraction,voice%3);
 c.init();c.flight(voice);c.loop(1);c.start();
 assert(c.running && c.samples.length>1);
 let lastState='flight';
 for(now=10;now<=120000;now+=10){
  c.tick();
  assert(c.running,'Stopped at '+now+'ms, voice '+voice);
  const state=c.bridge?'bridge':'flight';if(state!==lastState){transitions++;lastState=state;}
  if(now%100===0){
   const xy=c._output.filter(a=>a[0]===0).pop()[1];
   assert(xy.length===2 && xy.every(Number.isFinite));positions++;
   c._output.length=0;
  }
 }
 assert(!c._errors.length,c._errors.join('\n'));
}
// Range advances, loops at its end, and recovers after a failed early load.
now=0;const range=context('bio_trajektorien',abstraction);
range.init();range.firstflight(1);range.lastflight(3);range.mode(1);range.loop(1);range.start();
const seen=new Set();for(now=10;now<=120000;now+=10){range.tick();seen.add(range.selected);assert(range.running);range._output.length=0;}
assert.deepEqual([...seen].sort(),[1,2,3]);
now=0;const recovery=context('bio_trajektorien','');recovery.init();assert(!recovery.samples.length);
recovery.patcher.filepath=abstraction;recovery.start();assert(recovery.running && recovery.samples.length);
// Explicit resets must discard a flight queued in the previous playback state.
now=0;const restarted=context('bio_trajektorien',abstraction);
restarted.init();restarted.loop(1);restarted.start();restarted.flight(5);restarted.restart();
assert.equal(restarted.pendingFlight,null);
now=restarted.samples[restarted.samples.length-1][0]+1;restarted.tick();
assert.equal(restarted.selected,1);assert(restarted.running);
now=0;const switched=context('bio_trajektorien',abstraction);
switched.init();switched.loop(1);switched.start();switched.flight(500);switched.species(1);switched.start();
assert.equal(switched.pendingFlight,null);
now=switched.samples[switched.samples.length-1][0]+1;switched.tick();
assert(switched.running);assert.equal(switched.selected,1);assert.equal(switched._errors.length,0);
// Nested scripts and macOS volume-style saved paths both use the local root.
for(const outer of [abstraction,'Macintosh HD:'+abstraction]){
 const c=context('preset_path',outer,3);c.jsarguments[1]=prefix+'fly_notches.json';c.read();c.write();
 for(const a of c._output)assert.equal(a[2].replace(/^Macintosh HD:/,''),path.join(root,'data',prefix+'fly_notches.json'));
}
for(const script of ['quad_motion_recorder','audio_record_path']){
 const c=context(script,abstraction,2);assert.equal(c.fscCodeFolder(),path.join(root,'code')+'/');
}
assert.equal(basenameLookups,0,'Old self-file lookup must never run');
console.log(JSON.stringify({status:'PASS',voices:50,simulated_seconds_per_voice:120,
 transitions,finite_positions_checked:positions,range_flights_seen:[...seen].sort(),
 recovery_after_initial_path_failure:true,restart_clears_pending:true,bank_switch_clears_pending:true,mac_volume_paths:true,basename_lookups:basenameLookups,
 file_opens:opened,native_max_test:false},null,2));
