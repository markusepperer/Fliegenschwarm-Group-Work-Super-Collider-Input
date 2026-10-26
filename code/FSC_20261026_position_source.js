autowatch=1; inlets=5; outlets=5;
// Inputs: commands, internal spatial XY, analysis XY, metadata, analyzer reset.
// Outputs: selected spatial XY, analysis XY, metadata, internal commands, reset.
var externalMode=0,voice=0;
var scope=String(jsarguments[1]);
function voiceid(v){
 voice=Math.floor(Number(v));
 if(voice>=1&&voice<=50)messnamed('FSC_20261026_external_registry','register',voice,scope);
 outlet(3,'voiceid',v);
}
function external(v){
 var next=Number(v)?1:0;if(next===externalMode)return;
 externalMode=next;outlet(4,'reset');outlet(3,'stop');
}
function externalpos(x,y,rebase){
 if(!externalMode||!isFinite(x)||!isFinite(y))return;
 if(Number(rebase))outlet(4,'reset');
 // Metadata 2 identifies live SC coordinates in a 1.40 x 2.00 m field.
 outlet(2,[2,0,1,1,Date.now()]);
 outlet(1,[Number(x),Number(y)]);outlet(0,[Number(x),Number(y)]);
}
function list(){
 if(externalMode)return;
 var a=arrayfromargs(arguments);
 if(inlet===1)outlet(0,a);else if(inlet===2)outlet(1,a);else if(inlet===3)outlet(2,a);
}
function anything(){
 var a=arrayfromargs(arguments);
 if(inlet===4){if(!externalMode)outlet(4,messagename);return;}
 if(inlet!==0)return;
 if(externalMode&&(messagename==='start'||messagename==='restart'))return;
 outlet(3,[messagename].concat(a));
}
function loadbang(){if(voice>0)messnamed('FSC_20261026_external_registry','register',voice,scope);}
