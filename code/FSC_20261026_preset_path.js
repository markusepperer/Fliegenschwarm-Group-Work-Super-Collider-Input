autowatch=1; inlets=1; outlets=1;
function read(){emit("read");}
function write(){emit("write");}
function emit(command){
 var filename=String(jsarguments[1]);
 if(filename!=="FSC_20261026_fly_notches.json" && filename!=="FSC_20261026_fliegensynthmain_setup.json"){
  error("Unknown local FSC preset\n");return;
 }
 outlet(0,command,fscLocalPath("data/"+filename));
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
