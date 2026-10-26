autowatch=1; inlets=1; outlets=0;
// One receiver and one clock for all voices. OSC never changes poly~'s target.
var enabled=0,active=0,moving=0,playing=0;
var buses=[],latest=[],positions=[],receivedAt=[],needsReset=[],wasMoving=[];
var clock=new Task(tick,this);
function validNumber(v){return typeof v==='number'&&isFinite(v);}
function initialPosition(id){
 // Static circular formation: same concentric-ring layout as the internal
 // formation at shape=0, density=0, centered at [.5,.5], with no raw-flight bias.
 if(id===1)return [.5,.5];
 var f=49,R=1;while(3*R*(R+1)<f)R++;
 var idx=id-2,previous=0,end=0,ring=1,den=R*(R+1);
 for(ring=1;ring<=R;ring++){end=Math.round(f*ring*(ring+1)/den);if(idx<end)break;previous=end;}
 var used=Math.max(1,end-previous),angle=-Math.PI*.5+(ring%2===0?Math.PI/used:0)+2*Math.PI*(idx-previous)/used;
 var radius=.4*ring/R;
 return [.5+Math.cos(angle)*radius,.5+Math.sin(angle)*radius];
}
function send(id,name,args){if(buses[id])messnamed.apply(this,[buses[id],name].concat(args));}
function register(id,scope){
 if(!validNumber(id)||Math.floor(id)!==id||id<1||id>50||!/^\d+$/.test(String(scope)))return;
 buses[id]=String(scope)+'FSC_20261026_external_position';
 send(id,'external',[enabled]);
 if(enabled){if(!positions[id])positions[id]=initialPosition(id);send(id,'externalpos',[positions[id][0],positions[id][1],1]);needsReset[id]=true;}
}
function source(v){
 var next=Number(v)?1:0;if(next===enabled)return;
 enabled=next;clock.cancel();
 for(var id=1;id<=50;id++){
  latest[id]=null;receivedAt[id]=0;positions[id]=initialPosition(id);needsReset[id]=true;wasMoving[id]=false;
  send(id,'external',[enabled]);
  if(enabled)send(id,'externalpos',[positions[id][0],positions[id][1],1]);
 }
 if(enabled)clock.schedule(10);
}
function state(count,movers,run){
 active=Math.max(0,Math.min(50,Math.floor(Number(count)||0)));
 moving=Math.max(0,Math.min(active,Math.floor(Number(movers)||0)));playing=Number(run)?1:0;
}
function fly(){
 var a=arrayfromargs(arguments);if(a.length!==3)return;
 var id=a[0],x=a[1],y=a[2];
 if(!enabled||!validNumber(id)||Math.floor(id)!==id||id<1||id>50||!validNumber(x)||!validNumber(y)||x<0||x>1||y<0||y>1)return;
 var t=Date.now();if(!receivedAt[id]||t-receivedAt[id]>250)needsReset[id]=true;
 latest[id]=[x,y];receivedAt[id]=t;
}
function tick(){
 if(!enabled)return;
 for(var id=1;id<=50;id++){
  var allow=playing&&id<=active&&id<=moving;
  var changed=!!allow!==!!wasMoving[id];
  if(changed)needsReset[id]=true;
  if(allow&&latest[id])positions[id]=latest[id].slice(0);
  if(id<=active){
   var p=positions[id]||initialPosition(id),reset=changed||(allow&&latest[id]&&needsReset[id]);
   send(id,'externalpos',[p[0],p[1],reset?1:0]);
   if(reset&&allow&&latest[id])needsReset[id]=false;
  }
  wasMoving[id]=allow;
 }
 clock.schedule(10);
}
function notifydeleted(){clock.cancel();clock.freepeer();}
