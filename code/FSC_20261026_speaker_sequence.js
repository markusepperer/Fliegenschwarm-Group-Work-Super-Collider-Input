autowatch=1;
inlets=1;
outlets=5;

// 0 XY list
// 1 active speaker (0 when stopped)
// 2 status
// 3 UI corrections
// 4 mode menu

var pending={
 enabled:[1,1,1,1],
 probability:[100,100,100,100],
 method:'cw',
 timing:2,
 fixed:500,
 min:200,
 max:800,
 bpm:120,
 note:8,
 notes:[4,8],
 pattern:0,
 swing:0,
 deviate:10
};

var active=null;
var running=false;
var current=0;
var bag=[];
var menuKeys=[];
var stepTask=new Task(tick,this);

var coords=[
 [.15,.15],
 [.85,.15],
 [.85,.85],
 [.15,.85]
];

var swingStep=0;
var pairSwing=0;


// --------------------------------------------------
// BASIC
// --------------------------------------------------

function count(){
 var n=0;

 for(var i=0;i<4;i++)
  n+=pending.enabled[i];

 return n;
}


function ids(c){
 var a=[];

 for(var i=0;i<4;i++){
  if(c.enabled[i])
   a.push(i+1);
 }

 return a;
}


function copy(c){
 return {
  enabled:c.enabled.slice(),
  probability:c.probability.slice(),
  method:c.method,
  timing:c.timing,
  fixed:c.fixed,
  min:c.min,
  max:c.max,
  bpm:c.bpm,
  note:c.note,
  notes:c.notes.slice(),
  pattern:c.pattern,
  swing:c.swing,
  deviate:c.deviate
 };
}


function say(s){
 outlet(2,s);
}


function ui(key,v){
 outlet(3,key,'set',v);
}


// --------------------------------------------------
// METHOD MENU
// --------------------------------------------------

function menus(){
 var labels;

 if(count()===2){

  menuKeys=[
   'ping'
  ];

  labels=[
   'Pingpong'
  ];

 }else{

  menuKeys=[
   'cw',
   'ccw',
   'random',
   'urn'
  ];

  labels=[
   'Uhrzeigersinn',
   'Gegen Uhrzeigersinn',
   'Random ohne Wiederholung',
   'Random Urn'
  ];

  if(count()===4){

   menuKeys.push(
    'cross'
   );

   labels.push(
    'Kreuz: 1–3–2–4'
   );
  }
 }

 if(
  menuKeys.indexOf(
   pending.method
  )<0
 ){
  pending.method=
   menuKeys[0];
 }

 outlet(
  4,
  'clear'
 );

 for(
  var i=0;
  i<labels.length;
  i++
 ){
  outlet(
   4,
   'append',
   labels[i]
  );
 }

 outlet(
  4,
  'set',
  menuKeys.indexOf(
   pending.method
  )
 );
}


// --------------------------------------------------
// PROBABILITY VISIBILITY
// --------------------------------------------------

function probabilityVisibility(n){

 var i=
  Math.floor(n)-1;

 if(
  i<0 ||
  i>3
 )
  return;

 outlet(
  3,
  'patcher',
  'script',
  pending.enabled[i]
  ? 'show'
  : 'hide',
  'p'+(i+1)
 );
}


function probabilityVisibilityAll(){

 for(
  var i=1;
  i<=4;
  i++
 ){
  probabilityVisibility(i);
 }
}


// --------------------------------------------------
// LOAD
// --------------------------------------------------

function loadbang(){

 for(
  var i=0;
  i<4;
  i++
 ){

  ui(
   's'+(i+1),
   pending.enabled[i]
  );

  ui(
   'p'+(i+1),
   pending.probability[i]
  );
 }

 ui(
  'timing',
  pending.timing
 );

 ui(
  'fixed',
  pending.fixed
 );

 ui(
  'min',
  pending.min
 );

 ui(
  'max',
  pending.max
 );

 ui(
  'run',
  0
 );

 ui(
  'bpm',
  pending.bpm
 );

 ui(
  'note',
  denoms.indexOf(
   pending.note
  )
 );

 ui(
  'pattern',
  pending.pattern
 );

 ui(
  'swing',
  pending.swing
 );

 ui(
  'deviate',
  pending.deviate
 );


 for(
  var j=0;
  j<4;
  j++
 ){

  ui(
   'n'+denoms[j],
   pending.notes.indexOf(
    denoms[j]
   )>=0
   ? 1
   : 0
  );
 }


 visibility();

 probabilityVisibilityAll();

 menus();

 outlet(
  1,
  0
 );

 say(
  'Bereit. Mindestens zwei Speaker auswählen.'
 );
}


// --------------------------------------------------
// SPEAKER ON / OFF
// --------------------------------------------------

function speaker(n,v){

 n=
  Math.floor(n)-1;

 if(
  n<0 ||
  n>3
 )
  return;

 v=
  v
  ? 1
  : 0;


 if(
  !v &&
  pending.enabled[n] &&
  count()===2
 ){

  ui(
   's'+(n+1),
   1
  );

  probabilityVisibility(
   n+1
  );

  say(
   'Mindestens zwei Speaker bleiben aktiv.'
  );

  return;
 }


 pending.enabled[n]=v;

 probabilityVisibility(
  n+1
 );

 menus();

 say(
  running
  ? 'Auswahl gilt ab dem nächsten Schritt.'
  : 'Auswahl bereit.'
 );
}


// --------------------------------------------------
// PROBABILITY
// --------------------------------------------------

function probability(n,v){

 n=
  Math.floor(n)-1;

 if(
  n<0 ||
  n>3
 )
  return;


 var x=
  Math.max(
   0,
   Math.min(
    100,
    Number(v)||0
   )
  );


 pending.probability[n]=x;


 ui(
  'p'+(n+1),
  x
 );


 say(
  running
  ? 'Probability gilt ab dem nächsten Schritt.'
  : 'Probability gesetzt.'
 );
}


// --------------------------------------------------
// METHOD
// --------------------------------------------------

function method(v){

 v=
  Math.floor(v);

 if(
  v>=0 &&
  v<menuKeys.length
 ){

  pending.method=
   menuKeys[v];

  say(
   running
   ? 'Methode gilt ab dem nächsten Schritt.'
   : 'Methode gewählt.'
  );
 }
}


// --------------------------------------------------
// TIMING MODE
// --------------------------------------------------

function timing(v){

 pending.timing=
  Math.max(
   0,
   Math.min(
    4,
    Math.floor(v)
   )
  );

 visibility();
}


// --------------------------------------------------
// MILLISECONDS
// --------------------------------------------------

function bounded(v){

 return Math.max(
  20,
  Math.min(
   60000,
   Number(v)||20
  )
 );
}


function fixed(v){

 pending.fixed=
  bounded(v);

 ui(
  'fixed',
  pending.fixed
 );
}


function minimum(v){

 pending.min=
  bounded(v);

 if(
  pending.min>
  pending.max
 ){

  pending.max=
   pending.min;

  ui(
   'max',
   pending.max
  );
 }

 ui(
  'min',
  pending.min
 );
}


function maximum(v){

 pending.max=
  bounded(v);

 if(
  pending.max<
  pending.min
 ){

  pending.min=
   pending.max;

  ui(
   'min',
   pending.min
  );
 }

 ui(
  'max',
  pending.max
 );
}


// --------------------------------------------------
// RUN
// --------------------------------------------------

function run(v){

 if(v)
  start();
 else
  stop();
}


function start(){

 stepTask.cancel();

 running=true;

 current=0;

 active=null;

 bag=[];

 patternStep=0;

 swingStep=0;

 pairSwing=0;

 ui(
  'run',
  1
 );

 tick();
}


function stop(){

 stepTask.cancel();

 running=false;

 ui(
  'run',
  0
 );

 outlet(
  1,
  0
 );

 say(
  'Gestoppt. Klangposition bleibt stehen.'
 );
}


// --------------------------------------------------
// SHUFFLE
// --------------------------------------------------

function shuffle(a){

 for(
  var i=a.length-1;
  i>0;
  i--
 ){

  var j=
   Math.floor(
    Math.random()*
    (i+1)
   );

  var v=
   a[i];

  a[i]=
   a[j];

  a[j]=
   v;
 }

 return a;
}


// --------------------------------------------------
// PROBABILITY TEST
// --------------------------------------------------

function passes(c,id){

 return (
  Math.random()*100
  <
  c.probability[id-1]
 );
}


function anyPositive(c){

 var a=
  ids(c);

 for(
  var i=0;
  i<a.length;
  i++
 ){

  if(
   c.probability[
    a[i]-1
   ]>0
  )
   return true;
 }

 return false;
}


// --------------------------------------------------
// NEXT SPEAKER
// --------------------------------------------------

function next(c){

 var a=
  ids(c);

 var i;
 var k;
 var v;


 // ------------------------------
 // TWO SPEAKERS = PINGPONG
 // ------------------------------

 if(
  a.length===2
 ){

  if(
   current===a[0]
  ){
   return (
    passes(
     c,
     a[1]
    )
    ? a[1]
    : 0
   );
  }


  if(
   current===a[1]
  ){
   return (
    passes(
     c,
     a[0]
    )
    ? a[0]
    : 0
   );
  }


  for(
   i=0;
   i<a.length;
   i++
  ){

   if(
    passes(
     c,
     a[i]
    )
   )
    return a[i];
  }

  return 0;
 }


 // ------------------------------
 // RANDOM
 // ------------------------------

 if(
  c.method==='random'
 ){

  var choices=[];

  for(
   i=0;
   i<a.length;
   i++
  ){

   if(
    a[i]!==current &&
    passes(
     c,
     a[i]
    )
   ){

    choices.push(
     a[i]
    );
   }
  }


  if(
   !choices.length
  )
   return 0;


  return choices[
   Math.floor(
    Math.random()*
    choices.length
   )
  ];
 }


 // ------------------------------
 // URN
 // ------------------------------

 if(
  c.method==='urn'
 ){

  if(
   !bag.length
  ){

   bag=
    shuffle(
     a.slice()
    );


   if(
    bag.length>1 &&
    bag[0]===current
   ){

    var j=
     1+
     Math.floor(
      Math.random()*
      (bag.length-1)
     );

    var tmp=
     bag[0];

    bag[0]=
     bag[j];

    bag[j]=
     tmp;
   }
  }


  while(
   bag.length
  ){

   v=
    bag.shift();

   if(
    v===current
   )
    continue;

   if(
    passes(
     c,
     v
    )
   )
    return v;
  }

  return 0;
 }


 // ------------------------------
 // FIXED ORDER
 // ------------------------------

 var order=
  c.method==='cross'
  ? [1,3,2,4]
  :
  (
   c.method==='ccw'
   ? [1,4,3,2]
   : [1,2,3,4]
  );


 i=
  order.indexOf(
   current
  );


 for(
  k=1;
  k<=4;
  k++
 ){

  v=
   order[
    (i+k+4)%4
   ];


  if(
   v!==current &&
   a.indexOf(v)>=0 &&
   passes(
    c,
    v
   )
  )
   return v;
 }


 return 0;
}


// --------------------------------------------------
// MAIN TICK
// --------------------------------------------------

function tick(){

 if(
  !running
 )
  return;


 var c=
  copy(
   pending
  );


 // ------------------------------
 // RESET URN IF NECESSARY
 // ------------------------------

 if(
  !active ||
  active.method!==c.method ||
  active.enabled.join('')!==
   c.enabled.join('') ||
  active.probability.join(',')!==
   c.probability.join(',')
 ){
  bag=[];
 }


 // ------------------------------
 // RESET PATTERN
 // ------------------------------

 if(
  !active ||
  active.timing!==c.timing ||
  active.pattern!==c.pattern
 ){
  patternStep=0;
 }


 // ------------------------------
 // RESET SWING PHASE
 //
 // IMPORTANT:
 // Swing and Deviate changes
 // DO NOT reset the phase.
 // ------------------------------

 if(
  !active ||
  active.timing!==c.timing ||
  active.note!==c.note
 ){

  swingStep=0;

  pairSwing=0;
 }


 active=c;


 var target=
  next(c);


 var ms=
  durationFor(c);


 if(
  target
 ){

  current=
   target;


  outlet(
   0,
   coords[
    current-1
   ]
  );


  outlet(
   1,
   current
  );


  say(
   'Speaker '+
   current+
   ' · '+
   Math.round(ms)+
   ' ms'+
   (
    c.timing>=2
    ? ' · '+c.bpm+' BPM'
    :
    (
     c.timing===1
     ? ' · Zufall'
     : ''
    )
   )
  );

 }else{

  if(
   !anyPositive(c)
  ){

   say(
    'Keine aktive Probability > 0 · Position bleibt · '+
    Math.round(ms)+
    ' ms'
   );

  }else{

   say(
    'Probability: kein Wechsel · '+
    Math.round(ms)+
    ' ms'
   );
  }
 }


 stepTask.schedule(
  ms
 );
}


// --------------------------------------------------
// DELETE
// --------------------------------------------------

function notifydeleted(){

 stepTask.cancel();

 stepTask.freepeer();
}


// --------------------------------------------------
// NOTE VALUES / PATTERNS
// --------------------------------------------------

var denoms=[
 2,
 4,
 8,
 16
];


var patterns=[

 [1,1,1,1],

 [1,1,2],

 [3,1],

 [1,2,1,2],

 [1,3],

 [1,1,1,3],

 [3,1,1,1],

 [2,1,2],

 [2,2,1,2],

 [4,3,2,1],

 [1,2,3,4],

 [1,3,1,2,2,1]
];


var patternStep=0;


// --------------------------------------------------
// BPM
// --------------------------------------------------

function bpm(v){

 pending.bpm=
  Math.max(
   20,
   Math.min(
    750,
    Number(v)||120
   )
  );

 ui(
  'bpm',
  pending.bpm
 );
}


// --------------------------------------------------
// NOTE
// --------------------------------------------------

function note(v){

 pending.note=
  denoms[
   Math.max(
    0,
    Math.min(
     3,
     Math.floor(v)
    )
   )
  ];
}


// --------------------------------------------------
// PATTERN
// --------------------------------------------------

function pattern(v){

 pending.pattern=
  Math.max(
   0,
   Math.min(
    patterns.length-1,
    Math.floor(v)
   )
  );
}


// --------------------------------------------------
// SWING
// --------------------------------------------------

function swing(v){

 pending.swing=
  Math.max(
   0,
   Math.min(
    99,
    Number(v)||0
   )
  );

 ui(
  'swing',
  pending.swing
 );
}


// --------------------------------------------------
// DEVIATE
// --------------------------------------------------

function deviate(v){

 pending.deviate=
  Math.max(
   0,
   Math.min(
    100,
    Number(v)||0
   )
  );

 ui(
  'deviate',
  pending.deviate
 );
}


// --------------------------------------------------
// RANDOM NOTE POOL
// --------------------------------------------------

function pool(d,v){

 d=
  Number(d);


 if(
  denoms.indexOf(d)<0
 )
  return;


 var i=
  pending.notes.indexOf(d);


 if(
  v &&
  i<0
 ){

  pending.notes.push(
   d
  );
 }


 if(
  !v &&
  i>=0
 ){

  if(
   pending.notes.length===1
  ){

   ui(
    'n'+d,
    1
   );

   say(
    'Mindestens einen Notenwert wählen.'
   );

   return;
  }


  pending.notes.splice(
   i,
   1
  );
 }
}


// --------------------------------------------------
// HUMANIZED SWING
//
// Swing = central value
// Deviate = random deviation around Swing
//
// Example:
// Swing 50
// Deviate 10
//
// effective Swing per pair:
// approximately 40 ... 60
//
// One random value is generated per
// LONG/SHORT pair.
//
// LONG + SHORT always remains 2 * base.
//
// No tempo drift.
//
// Swing 0 always remains exactly straight.
// --------------------------------------------------

function equalNoteDuration(c,base){

 var total=
  2*base;


 // ----------------------------------------------
 // At beginning of every new LONG/SHORT pair:
 // determine one effective Swing value.
 // ----------------------------------------------

 if(
  swingStep%2===0
 ){

  if(
   c.swing<=0
  ){

   pairSwing=0;

  }else{

   pairSwing=
    c.swing+
    (
     Math.random()*2-1
    )*
    c.deviate;


   pairSwing=
    Math.max(
     0,
     Math.min(
      99,
      pairSwing
     )
    );
  }
 }


 var amount=
  pairSwing/100;


 var longDur=
  base*
  (
   1+amount
  );


 var shortDur=
  base*
  (
   1-amount
  );


 // ----------------------------------------------
 // Global minimum duration = 20 ms.
 //
 // Preserve exact pair duration.
 // ----------------------------------------------

 if(
  shortDur<20
 ){

  shortDur=20;

  longDur=
   total-
   shortDur;
 }


 if(
  longDur<20
 ){

  longDur=20;

  shortDur=
   total-
   longDur;
 }


 var d=
  swingStep%2===0
  ? longDur
  : shortDur;


 swingStep++;


 return Math.max(
  20,
  d
 );
}


// --------------------------------------------------
// DURATION
// --------------------------------------------------

function durationFor(c){


 // ------------------------------
 // FIXED MILLISECONDS
 // ------------------------------

 if(
  c.timing===0
 )
  return c.fixed;


 // ------------------------------
 // RANDOM MILLISECONDS
 // ------------------------------

 if(
  c.timing===1
 ){

  return (
   c.min+
   Math.random()*
   (
    c.max-
    c.min
   )
  );
 }


 var beat=
  60000/
  c.bpm;


 // ------------------------------
 // EQUAL NOTES + SWING + DEVIATE
 // ------------------------------

 if(
  c.timing===2
 ){

  var base=
   beat*
   4/
   c.note;


  return equalNoteDuration(
   c,
   base
  );
 }


 // ------------------------------
 // RANDOM NOTES
 // ------------------------------

 if(
  c.timing===3
 ){

  return Math.max(
   20,
   beat*
   4/
   c.notes[
    Math.floor(
     Math.random()*
     c.notes.length
    )
   ]
  );
 }


 // ------------------------------
 // PATTERN
 // ------------------------------

 var p=
  patterns[
   c.pattern
  ];


 var m=
  p[
   patternStep%
   p.length
  ];


 patternStep++;


 return Math.max(
  20,
  beat*
  4/
  c.note*
  m
 );
}


// --------------------------------------------------
// VISIBILITY
// --------------------------------------------------

function visibility(){

 var t=
  pending.timing;


 var groups=[

  [
   'fixed',
   'lfixed'
  ],

  [
   'min',
   'max',
   'lmin',
   'lmax'
  ],

  [
   'bpm',
   'lbpm'
  ],

  [
   'note',
   'lnote'
  ],

  [
   'n2',
   'n4',
   'n8',
   'n16',
   'lpool'
  ],

  [
   'pattern',
   'lpattern'
  ],

  [
   'swing',
   'lswing',
   'deviate',
   'ldeviate'
  ]
 ];


 var show=[

  t===0,

  t===1,

  t>=2,

  t===2||t===4,

  t===3,

  t===4,

  t===2
 ];


 for(
  var i=0;
  i<groups.length;
  i++
 ){

  for(
   var j=0;
   j<groups[i].length;
   j++
  ){

   outlet(
    3,
    'patcher',
    'script',
    show[i]
    ? 'show'
    : 'hide',
    groups[i][j]
   );
  }
 }
}