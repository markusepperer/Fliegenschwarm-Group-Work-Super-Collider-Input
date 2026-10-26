autowatch=1; inlets=1; outlets=1;
function bang(){
 var id=String(jsarguments[1]);
 if(!/^[0-9]+$/.test(id)){error("Recording instance ID missing\n");return;}
 outlet(0,"open","/Users/macbook/Documents/ChatGPT/Fliegenschwarm/output/THE_FLY_SC_Arbeitskopie/recordings/FSC_20261026_"+id+"_audio.wav");
}
