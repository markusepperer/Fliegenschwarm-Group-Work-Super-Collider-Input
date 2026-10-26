autowatch = 1;
inlets = 6;
outlets = 6;
// inlet 0 Shift Y, 1 Expand %, 2 Spread %, 3 Rotate degrees,
// inlet 4 Shake 0..1, inlet 5 Shift X.
var shiftY=0.0, expand=100.0, spread=100.0, rotate=0.0, shake=0.0, shiftX=0.0;
function clamp(v,a,b){ return Math.max(a,Math.min(b,v)); }
function setval(v){
    v=Number(v); if(!isFinite(v)) return;
    if(inlet===0) shiftY=clamp(v,-1,1);
    else if(inlet===1) expand=clamp(v,1,200);
    else if(inlet===2) spread=clamp(v,0,140);
    else if(inlet===3) rotate=clamp(v,-180,180);
    else if(inlet===4) shake=clamp(v,0,1);
    else if(inlet===5) shiftX=clamp(v,-1,1);
    emit();
}
function msg_int(v){ setval(v); }
function msg_float(v){ setval(v); }
function reset(){ shiftY=0; expand=100; spread=100; rotate=0; shake=0; shiftX=0; emit(); }
function anything(){ if(messagename==="reset") reset(); }
function loadbang(){ reset(); }
function emit(){
    var d=spread*0.0035;
    var a=rotate*Math.PI/180.0, c=Math.cos(a), s=Math.sin(a);
    var size=expand*0.0063;
    var pts=[[-d,-d],[d,-d],[-d,d],[d,d]];
    outlet(1,["nsize",size,size,size,size]);
    for(var i=0;i<4;i++){
        var dx=pts[i][0], dy=pts[i][1];
        var jx=(Math.random()*2-1)*shake*0.10;
        var jy=(Math.random()*2-1)*shake*0.10;
        var x=0.5+shiftX+c*dx-s*dy+jx;
        var y=0.5+shiftY+s*dx+c*dy+jy;
        outlet(1,["setnode",i+1,x,y]);
    }
}
