autowatch=1; inlets=1; outlets=1;
function bang(){
 var id=String(jsarguments[1]);
 if(!/^[0-9]+$/.test(id)){error("Recording instance ID missing\n");return;}
 outlet(0,"open",fscLocalPath("recordings/FSC_20261026_"+id+"_audio.wav"));
}

// Resolve only this uniquely named local script; never use a fixed checkout path.
function fscCodeFolder(){
 var f=new File(jsarguments[0],"read");
 if(!f.isopen)throw new Error("Local FSC script not found: "+jsarguments[0]);
 var folder=f.foldername;f.close();
 if(!folder)throw new Error("Local FSC code folder unavailable");
 return folder.replace(/\/$/,"")+"/";
}
function fscLocalPath(relative){return fscCodeFolder()+"../"+relative;}
