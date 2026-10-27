// Small event interpreter for the Max objects used by the native OSC path.
// Executes the saved patch graphs; this is not a substitute for native Max.
const BANG=['bang'];
const atom=s=>s!==''&&Number.isFinite(Number(s))?Number(s):s;
class MaxGraph {
 constructor(patcher,output=()=>{},clock=()=>0,hooks={}){
  this.p=patcher;this.output=output;this.clock=clock;this.hooks=hooks;
  this.boxes=new Map(patcher.boxes.map(q=>[q.box.id,q.box]));this.states=new Map();this.children=new Map();
  for(const b of this.boxes.values()){
   const t=(b.text||'').split(/\s+/),op=t[0],args=t.slice(1).map(atom);
   this.states.set(b.id,{value:args[0]??0,list:args,gate:op==='gate'?(args[1]??0):0,last:args[0]??0,expr:Array(b.numinlets||1).fill(0),due:null});
   if(b.patcher)this.children.set(b.id,new MaxGraph(b.patcher,(i,m)=>this.emit(b.id,i,m),clock,hooks));
  }
 }
 initialize(){for(const child of this.children.values())child.initialize();for(const b of this.boxes.values()){
  const [op,...args]=(b.text||'').split(/\s+/);if(op==='loadmess')this.emit(b.id,0,args.map(atom));if(op==='loadbang')this.emit(b.id,0,BANG);
 }}
 emit(id,port,m){
  const links=this.p.lines.map(q=>q.patchline).filter(l=>l.source[0]===id&&l.source[1]===port);
  links.sort((a,b)=>(a.order??100)-(b.order??100)||this.boxes.get(b.destination[0]).patching_rect[0]-this.boxes.get(a.destination[0]).patching_rect[0]);
  for(const l of links)this.send(l.destination[0],l.destination[1],m.slice());
 }
 input(index,m){const b=[...this.boxes.values()].find(b=>b.maxclass==='inlet'&&b.index===index+1);if(!b)throw Error('Missing inlet '+index);this.emit(b.id,0,m);}
 send(id,inlet,m){
  const b=this.boxes.get(id);if(!b)throw Error('Missing box '+id);const st=this.states.get(id),text=b.text||'',parts=text.split(/\s+/),op=parts[0],args=parts.slice(1).map(atom);
  const bang=m.length===1&&m[0]==='bang',n=m[0];
  if(this.hooks[id])return this.hooks[id](inlet,m);
  if(b.maxclass==='comment')return;
  if(b.maxclass==='outlet')return this.output(b.index-1,m);
  if(b.maxclass==='message'){
   const rendered=parts.map(s=>/^\$[1-9]\d*$/.test(s)?(m[Number(s.slice(1))-1]??0):atom(s));return this.emit(id,0,rendered);
  }
  if(this.children.has(id))return this.children.get(id).input(inlet,m);
  if(op==='t'||op==='trigger'){
   for(let i=args.length-1;i>=0;i--){const kind=args[i];this.emit(id,i,kind==='b'?BANG:kind==='i'?[bang?0:Math.trunc(Number(n)||0)]:kind==='f'?[bang?0:Number(n)||0]:m);}return;
  }
  if(op==='i'||op==='int'||op==='f'||op==='float'){
   if(!bang)st.value=op==='i'||op==='int'?Math.trunc(Number(n)||0):Number(n)||0;
   if(inlet===0)this.emit(id,0,[st.value]);return;
  }
  if(op==='gate'){
   if(inlet===0){st.gate=Number(n)||0;return;}if(st.gate>=1&&st.gate<=Number(args[0]||1))this.emit(id,st.gate-1,m);return;
  }
  if(op==='route'){
   let i=args.findIndex(x=>x===n);
   if(i<0&&typeof n==='number'&&m.length===1)i=args.findIndex(x=>x===(Number.isInteger(n)?'int':'float'));
   if(i>=0){const typed=['int','float'].includes(args[i])&&typeof n==='number';return this.emit(id,i,typed?m:m.length>1?m.slice(1):BANG);}
   return this.emit(id,args.length,m);
  }
  if(op==='sel'||op==='select'){const i=args.indexOf(n);return this.emit(id,i<0?args.length:i,i<0?m:BANG);}
  if(op==='prepend')return this.emit(id,0,args.concat(bang?[]:m));
  if(op==='unpack'){for(let i=Math.min(args.length,m.length)-1;i>=0;i--)this.emit(id,i,[m[i]]);return;}
  if(op==='pak'||op==='pack'){
   if(!bang)for(let i=0;i<m.length&&inlet+i<st.list.length;i++)st.list[inlet+i]=m[i];
   if(op==='pak'||inlet===0)this.emit(id,0,st.list.slice());return;
  }
  if(op==='expr'){
   if(!bang)for(let i=0;i<m.length&&inlet+i<st.expr.length;i++)st.expr[inlet+i]=m[i];
   if(inlet!==0)return;
   const expr=text.slice(5).replace(/\$([if])(\d+)/g,(_,kind,i)=>kind==='i'?`Math.trunc(v[${Number(i)-1}]||0)`:`Number(v[${Number(i)-1}])`);
   let result=Function('v','int','sin',`return (${expr});`)(st.expr,Math.trunc,Math.sin);if(typeof result==='boolean')result=Number(result);return this.emit(id,0,[result]);
  }
  if(op==='+'||op==='!-'||op==='*'){if(inlet===1){st.value=Number(n);return;}return this.emit(id,0,[op==='+'?Number(n)+Number(st.value):op==='*'?Number(n)*Number(st.value):Number(st.value)-Number(n)]);}
  if(op==='clip'){if(inlet===1){st.list[0]=Number(n);return;}if(inlet===2){st.list[1]=Number(n);return;}return this.emit(id,0,[Math.max(Number(st.list[0]),Math.min(Number(st.list[1]),Number(n)))]);}
  if(op==='==')return this.emit(id,0,[Number(n===args[0])]);
  if(op==='change'){if(n!==st.last){st.last=n;this.emit(id,0,m);}return;}
  if(op==='zl'){
   if(args[0]==='reg'){
    if(!bang)st.list=m.slice();if(inlet===0&&st.list.length)this.emit(id,0,st.list.slice());return;
   }
   if(args[0]==='len')return this.emit(id,0,[m.length]);
   if(args[0]==='nth'){const value=m[Number(args[1])-1];if(value!==undefined)this.emit(id,0,[value]);return;}
  }
  if(op==='coll'){const v=b.coll_data?.data.find(q=>q.key===n);if(v)this.emit(id,0,v.value.slice());return;}
  if(op==='counter'){if(inlet===0){this.emit(id,0,[st.value]);st.value++;}return;}
  if(op==='uzi'){for(let i=0;i<Number(args[0]||1);i++){this.emit(id,2,[i+Number(args[1]||1)]);this.emit(id,0,BANG);}this.emit(id,1,BANG);return;}
  if(op==='speedlim'){if(st.next===undefined||this.clock()>=st.next){st.next=this.clock()+Number(args[0]||0);this.emit(id,0,m);}return;}
  if(op==='cpuclock')return this.emit(id,0,[this.clock()]);
  if(op==='delay'){st.due=n==='stop'?null:this.clock()+Number(args[0]);return;}
  if(op==='qmetro'||op==='metro'){st.running=Number(n)!==0;return;}
  if(['loadmess','loadbang','udpreceive'].includes(op))return;
  throw Error('Unsupported native object: '+op+' ('+id+')');
 }
 due(){for(const [id,st] of this.states)if(st.due!==null&&st.due<=this.clock()){st.due=null;this.emit(id,0,BANG);}for(const child of this.children.values())child.due();}
}
module.exports={MaxGraph};
