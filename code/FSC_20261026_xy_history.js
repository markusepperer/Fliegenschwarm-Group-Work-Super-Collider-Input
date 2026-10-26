autowatch=1; inlets=2; outlets=3;
// Repositioning primes the existing speed/turn histories with muted outputs.
var pending=false;
function reset(){pending=true;outlet(1,0);outlet(2,0);}
function rebase(){reset();}
function list(){
 var a=arrayfromargs(arguments);if(a.length<2)return;
 if(pending){
  outlet(1,0);outlet(0,a);outlet(0,a);pending=false;outlet(1,1);
 }else outlet(0,a);
}
function loadbang(){outlet(1,1);}
