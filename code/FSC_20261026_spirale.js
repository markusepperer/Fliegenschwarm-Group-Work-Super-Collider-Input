autowatch=1;inlets=1;outlets=3;
var cfg={speed:.1,inner:.1,outer:.9,turns:3,xscale:1,yscale:1,direction:0,mode:0,returnmode:0,transition:200};
var smooth={inner:.1,outer:.9,turns:3,xscale:1,yscale:1,spin:1},ramps={};
var activeMode=0,activeReturn=0,u=0,radial=1,theta=0,polarity=1;
var running=false,started=false,last=0,task=new Task(tick,this);
function clamp(v,a,b){return Math.max(a,Math.min(b,v));}
function sync(){for(var k in cfg)outlet(1,k,'set',cfg[k]);}
function waiting(){return cfg.mode!==activeMode||cfg.returnmode!==activeReturn;}
function status(){outlet(2,waiting()?'Wechsel vorgemerkt':running?(cfg.speed===0?'Tempo 0 · hält':'Läuft'):'Gestoppt');}
function loadbang(){sync();status();}
function position(){var r=smooth.outer+(smooth.inner-smooth.outer)*u;return [.5+.5*r*smooth.xscale*Math.cos(theta),.5+.5*r*smooth.yscale*Math.sin(theta)];}
function emit(){outlet(0,position());}
function target(k,v){var t=cfg.transition/1000;if(t<=0){smooth[k]=v;delete ramps[k];}else ramps[k]={from:smooth[k],to:v,time:0,duration:t};}
function morph(dt){for(var k in ramps){var r=ramps[k];r.time=Math.min(r.duration,r.time+dt);smooth[k]=r.from+(r.to-r.from)*r.time/r.duration;if(r.time>=r.duration)delete ramps[k];}}
function reset(){activeMode=cfg.mode;activeReturn=cfg.returnmode;u=activeMode===2?1:0;radial=activeMode===2?-1:1;theta=0;polarity=1;ramps={};for(var k in smooth)smooth[k]=k==='spin'?(cfg.direction? -1:1):cfg[k];started=true;}
function start(){if(running)return;if(!started)reset();running=true;last=Date.now();emit();status();task.schedule(10);}
function stop(){advanceTo(Date.now());task.cancel();running=false;emit();status();}
function restart(){reset();last=Date.now();emit();status();}
function msg_int(v){if(v)start();else stop();}
function boundary(){
 activeMode=cfg.mode;activeReturn=cfg.returnmode;
 if(activeMode===0){radial=u>=.5?-1:1;polarity=activeReturn===0?radial:1;}
 else if(activeMode===1){if(u>=.5)u=0;radial=1;polarity=1;}
 else {if(u<.5)u=1;radial=-1;polarity=1;}
 status();
}
function advanceTo(now){if(!running)return;var remaining=Math.max(0,(now-last)/1000);last=now;
 // Small time slices integrate changing angular speed; split exactly at radial endpoints.
 while(remaining>1e-10){var dt=Math.min(.005,remaining),toEdge=radial>0?1-u:u;
 if(cfg.speed>0)dt=Math.min(dt,toEdge/cfg.speed);
 if(dt<1e-10&&cfg.speed>0){u=radial>0?1:0;boundary();continue;}
 var before=smooth.turns*smooth.spin;morph(dt);
 theta+=2*Math.PI*cfg.speed*polarity*(before+smooth.turns*smooth.spin)*.5*dt;
 u=clamp(u+radial*cfg.speed*dt,0,1);remaining-=dt;
 if(cfg.speed>0&&((radial>0&&u>=1-1e-10)||(radial<0&&u<=1e-10))){u=radial>0?1:0;boundary();}
 }
 theta=theta%(2*Math.PI);
}
function setparam(k,v){v=Number(v);if(!isFinite(v))return;advanceTo(Date.now());
 if(k==='speed')v=clamp(v,0,100);else if(k==='turns')v=clamp(v,0,64);else if(k==='transition')v=clamp(v,0,10000);else if(k==='mode')v=clamp(Math.floor(v),0,2);else if(k==='direction'||k==='returnmode')v=v?1:0;else v=clamp(v,0,1);
 cfg[k]=v;
 if(k==='inner'||k==='outer'){
 if(cfg.inner>cfg.outer){if(k==='inner')cfg.outer=cfg.inner;else cfg.inner=cfg.outer;}
 target('inner',cfg.inner);target('outer',cfg.outer);
 }else if(k==='direction')target('spin',cfg.direction?-1:1);
 else if(k in smooth)target(k,v);
 if(!started&&(k==='mode'||k==='returnmode')){activeMode=cfg.mode;activeReturn=cfg.returnmode;}
 sync();status();
}
function speed(v){setparam('speed',v);}function inner(v){setparam('inner',v);}function outer(v){setparam('outer',v);}function turns(v){setparam('turns',v);}function xscale(v){setparam('xscale',v);}function yscale(v){setparam('yscale',v);}function direction(v){setparam('direction',v);}function mode(v){setparam('mode',v);}function returnmode(v){setparam('returnmode',v);}function transition(v){setparam('transition',v);}
function tick(){if(!running)return;advanceTo(Date.now());emit();task.schedule(10);}
function notifydeleted(){task.cancel();task.freepeer();}
