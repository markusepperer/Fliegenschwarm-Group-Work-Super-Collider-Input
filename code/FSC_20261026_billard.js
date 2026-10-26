autowatch=1; inlets=1; outlets=3;
// 0 XY; 1 UI set messages; 2 status. Angles: 0 right, 90 up.
var cfg={speed:0.2,angle:35,startx:0,starty:0,width:1,height:1,posx:0,posy:0};
var x=.5,y=.5,vx=1,vy=0,pending=null,started=false,running=false,last=0;
var task=new Task(tick,this),EPS=1e-10;
function clamp(v,a,b){return Math.max(a,Math.min(b,v));}
function bounds(){var w=cfg.width,h=cfg.height,cx=.5+cfg.posx*(1-w)/2,cy=.5-cfg.posy*(1-h)/2;return [cx-w/2,cx+w/2,cy-h/2,cy+h/2];}
function emit(){outlet(0,[x,y]);}
function status(){outlet(2,running?'Läuft': 'Gestoppt');}
function loadbang(){for(var k in cfg)outlet(1,k,'set',cfg[k]);status();}
function direction(a){var t=a*Math.PI/180;vx=Math.cos(t);vy=-Math.sin(t);if(Math.abs(vx)<EPS)vx=0;if(Math.abs(vy)<EPS)vy=0;}
function place(){var b=bounds();x=(b[0]+b[1])/2+cfg.startx*cfg.width/2;y=(b[2]+b[3])/2-cfg.starty*cfg.height/2;direction(cfg.angle);pending=null;inward(b);started=true;emit();}
function inward(b){if(x<=b[0]+EPS)vx=Math.abs(vx);if(x>=b[1]-EPS)vx=-Math.abs(vx);if(y<=b[2]+EPS)vy=Math.abs(vy);if(y>=b[3]-EPS)vy=-Math.abs(vy);}
function start(){if(running)return;if(!started)place();running=true;last=Date.now();status();task.schedule(10);}
function stop(){task.cancel();running=false;status();}
function restart(){place();last=Date.now();status();}
function msg_int(v){if(v)start();else stop();}
function setparam(k,v){v=Number(v);if(!isFinite(v))return;
 if(k==='speed')v=clamp(v,0,50);
 else if(k==='angle')v=((v%360)+360)%360;
 else if(k==='width'||k==='height')v=clamp(v,.01,1);
 else v=clamp(v,-1,1);
 cfg[k]=v;outlet(1,k,'set',v);
 if(k==='angle'&&started)pending=v;
 if(k==='width'||k==='height'||k==='posx'||k==='posy'){var b=bounds();x=clamp(x,b[0],b[1]);y=clamp(y,b[2],b[3]);inward(b);if(started)emit();}
}
function speed(v){setparam('speed',v);}function angle(v){setparam('angle',v);}function startx(v){setparam('startx',v);}function starty(v){setparam('starty',v);}function width(v){setparam('width',v);}function height(v){setparam('height',v);}function posx(v){setparam('posx',v);}function posy(v){setparam('posy',v);}
// Consume the full travelled distance, including multiple wall contacts in a tick.
function advance(distance){var b=bounds(),guard=0;inward(b);
 while(distance>EPS&&guard++<100000){
 var tx=vx>EPS?(b[1]-x)/vx:vx<-EPS?(b[0]-x)/vx:Infinity;
 var ty=vy>EPS?(b[3]-y)/vy:vy<-EPS?(b[2]-y)/vy:Infinity;
 var hit=Math.max(0,Math.min(tx,ty));
 if(hit>distance){x+=vx*distance;y+=vy*distance;distance=0;break;}
 x+=vx*hit;y+=vy*hit;distance-=hit;
 var hx=Math.abs(tx-hit)<EPS,hy=Math.abs(ty-hit)<EPS;
 var right=vx>0,bottom=vy>0;
 if(hx)x=right?b[1]:b[0];if(hy)y=bottom?b[3]:b[2];
 if(pending!==null){direction(pending);pending=null;if(hx)vx=right?-Math.abs(vx):Math.abs(vx);if(hy)vy=bottom?-Math.abs(vy):Math.abs(vy);}
 else {if(hx)vx=-vx;if(hy)vy=-vy;}
 inward(b);
 }
 x=clamp(x,b[0],b[1]);y=clamp(y,b[2],b[3]);
}
function tick(){if(!running)return;var now=Date.now(),dt=Math.max(0,(now-last)/1000);last=now;advance(cfg.speed*dt);emit();task.schedule(10);}
function notifydeleted(){task.cancel();task.freepeer();}
