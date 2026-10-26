autowatch=1; inlets=1; outlets=3;
function msg_int(v){v=Math.max(0,Math.min(4,Math.floor(v)));outlet(0,0);outlet(1,0);outlet(2,0);if(v===1)outlet(0,1);else if(v===2)outlet(1,1);else if(v===3)outlet(1,-1);else if(v===4)outlet(2,1);}
