autowatch=1;
inlets=2;
outlets=5;

// inlet 0: XY list [x y] actually sent to #1_Flugkoordinaten
// inlet 1: metadata [species flight measured scale_per_m source_time_ms]
// outlet 0: Maneuver intensity 0..1
// outlet 1: Turn intensity 0..1
// outlet 2: signed XY acceleration in m/s^2
// outlet 3: acceleration intensity 0..1
// outlet 4: XY speed in m/s

// Calibrated on all 700 measured fruit-fly trajectories.
var TURN_ON_DEG=12.0;
var TURN_FULL_DEG=30.0;
var TURN_MIN_SPEED=0.05; // m/s: suppress unstable angle estimates near standstill
var ACCEL_ON=3.0;       // |m/s^2|
var ACCEL_FULL=7.0;     // |m/s^2|

var species=-1,flight=-1,measured=0,scalePerM=0,sourceMs=0;
var prevMetaMs=-1;
var havePos=false,haveVel=false;
var prevX=0,prevY=0,prevWallMs=0;
var prevVx=0,prevVy=0,prevSpeed=0,prevDt=0;
var rebasePending=false;

function clamp01(v){return Math.max(0,Math.min(1,v));}
function ramp(v,a,b){if(v<=a)return 0;if(v>=b)return 1;return (v-a)/(b-a);}
function resetstate(){havePos=false;haveVel=false;rebasePending=false;prevX=prevY=prevWallMs=0;prevVx=prevVy=prevSpeed=prevDt=0;}
function rebase(){rebasePending=true;}
function zeros(){outlet(4,0);outlet(3,0);outlet(2,0);outlet(1,0);outlet(0,0);}

function setmeta(a){
 if(a.length<5)return;
 var ns=Number(a[0]),nf=Math.floor(Number(a[1])),nm=Number(a[2])?1:0,nscale=Number(a[3]),nt=Number(a[4]);
 if(!isFinite(ns)||!isFinite(nf)||!isFinite(nscale)||!isFinite(nt))return;
 var changed=(ns!==species||nf!==flight||nm!==measured||nt<prevMetaMs-1e-6);
 species=ns;flight=nf;measured=nm;scalePerM=nscale;sourceMs=nt;
 if(changed)resetstate();
 prevMetaMs=nt;
}

function processxy(a){
 if(a.length<2)return;
 var x=Number(a[0]),y=Number(a[1]);
 if(!isFinite(x)||!isFinite(y))return;
 var now=Date.now();
 // Fruit fly only. Mosquito and synthetic bridge are forced to zero.
 if(species!==0||!measured||!(scalePerM>0)){
  resetstate();zeros();return;
 }
 if(rebasePending){prevX=x;prevY=y;prevWallMs=now;havePos=true;rebasePending=false;return;}
 if(!havePos){
  prevX=x;prevY=y;prevWallMs=now;havePos=true;zeros();return;
 }
 // Derivatives must use real playback time. sourceMs belongs to the original
 // recording and therefore deliberately does not become faster with the GUI
 // tempo. Using it here made the manoeuvre values ignore tempo changes.
 var dt=(now-prevWallMs)/1000.0;
 if(!(dt>0))return;
 // A stopped scheduler or a long UI interruption is a new measurement run,
 // not a physical deceleration/acceleration of the yellow point.
 if(dt>0.25){
  prevX=x;prevY=y;prevWallMs=now;haveVel=false;prevVx=prevVy=prevSpeed=prevDt=0;zeros();return;
 }
 var dxm=(x-prevX)/scalePerM;
 var dym=(y-prevY)/scalePerM;
 var vx=dxm/dt,vy=dym/dt;
 var speed=Math.sqrt(vx*vx+vy*vy);
 var turnIntensity=0,accel=0,accelIntensity=0;
 if(haveVel){
  var minSpeed=Math.min(prevSpeed,speed);
  if(minSpeed>=TURN_MIN_SPEED){
   var cross=prevVx*vy-prevVy*vx;
   var dot=prevVx*vx+prevVy*vy;
   var turnDeg=Math.atan2(cross,dot)*180.0/Math.PI;
   turnIntensity=ramp(Math.abs(turnDeg),TURN_ON_DEG,TURN_FULL_DEG);
  }
  var accelDt=(prevDt+dt)*0.5;
  if(accelDt>0){
   accel=(speed-prevSpeed)/accelDt;
   accelIntensity=ramp(Math.abs(accel),ACCEL_ON,ACCEL_FULL);
  }
 }
 // Either mechanism can trigger; simultaneous turn+acceleration becomes stronger.
 var maneuver=1.0-(1.0-turnIntensity)*(1.0-accelIntensity);
 maneuver=clamp01(maneuver);
 outlet(4,speed);
 outlet(3,accelIntensity);
 outlet(2,accel);
 outlet(1,turnIntensity);
 outlet(0,maneuver);
 prevX=x;prevY=y;prevWallMs=now;
 prevVx=vx;prevVy=vy;prevSpeed=speed;prevDt=dt;haveVel=true;
}

function list(){var a=arrayfromargs(arguments);if(inlet===1)setmeta(a);else processxy(a);}
function reset(){resetstate();zeros();}
