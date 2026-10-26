autowatch=1; inlets=1; outlets=1;
function bang(){
 var id=String(jsarguments[1]);
 if(!/^[0-9]+$/.test(id)){error("Recording instance ID missing\n");return;}
 outlet(0,"open",fscLocalPath("recordings/FSC_20261026_"+id+"_audio.wav"));
}

// Use the loaded FSC abstraction path, not Max's script-file search path.
function fscProjectRoot(){
 var p=this.patcher;
 for(var depth=0;p&&depth<64;depth++){
  var saved=String(p.filepath||"").replace(/\\/g,"/");
  if(/\/patchers\/FSC_20261026_[^/]+\.maxpat$/.test(saved))
   return saved.replace(/patchers\/[^/]+$/,"");
  p=p.parentpatcher;
 }
 throw new Error("Saved local FSC abstraction path unavailable");
}
function fscCodeFolder(){return fscProjectRoot()+"code/";}
function fscLocalPath(relative){return fscProjectRoot()+relative;}
