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
// Resolve only this uniquely named local script; never use a fixed checkout path.
function fscCodeFolder(){
 var f=new File(jsarguments[0],"read");
 if(!f.isopen)throw new Error("Local FSC script not found: "+jsarguments[0]);
 var folder=f.foldername;f.close();
 if(!folder)throw new Error("Local FSC code folder unavailable");
 return folder.replace(/\/$/,"")+"/";
}
function fscLocalPath(relative){return fscCodeFolder()+"../"+relative;}
