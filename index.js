 var edge = require('edge-js');
 
 var clrMethod = edge.func('/opt/app/PrimeNumber.dll');
 
 clrMethod(123, function(error, result){
   if(error) throw error;
   console.log(result);
 });