autowatch=1;
inlets=1;
outlets=1;

var mode=0;
var points=1;
var cycle=10;
var startWindow=0;
var endWindow=0;
var currentSeed=1;

function token(){return new Date().getTime()+Math.random();}
function send(name,value,withToken){if(withToken)outlet(0,name,value,token());else outlet(0,name,value);}
function sendTimed(name,value,newTargets){var eventToken=token();if(newTargets)currentSeed=token();outlet(0,name,value,eventToken,currentSeed);}

function anything(){
 var a=arrayfromargs(arguments),v=a.length?Number(a[0]):0;
 if(messagename==="landingmode"){
  mode=v!==0?1:0;
  sendTimed("landingmode",mode,mode!==0);
 }else if(messagename==="landingpoints"){
  points=Math.max(1,Math.min(50,Math.floor(v)));
  send("landingpoints",points,false);
 }else if(messagename==="landingcycle"){
  cycle=Math.max(.5,Math.min(120,v));
  send("landingcycle",cycle,false);
 }else if(messagename==="landingstartwindow"){
  startWindow=Math.max(0,Math.min(120,v));
  send("landingstartwindow",startWindow,false);
 }else if(messagename==="landingendwindow"){
  endWindow=Math.max(0,Math.min(120,v));
  send("landingendwindow",endWindow,false);
 }else if(messagename==="landingtrigger"){
  sendTimed("landingtrigger",1,true);
 }
}
