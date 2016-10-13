var net = require("net");
var readline = require("readline");

var client = new net.Socket();
// ^^^^^^^^ start a connection
// "data" is an event on the socket object
// rl is the interface to get input from the user and to out to the user 
// client.on is a function that takes in two arguments: 
// 1) data (string that is the name of an event, could be named anything . Close/open other event examples.  )
// 2) this anonymous function takes in one argument in this case the data from server 
// 3) rl  is related closing the rd readline object 
// 4) to close the socket connection w/ the server , write client.end(); , but not right after client.write(X) or else it'll close before input is received from the user 


// 
// 
client.on("data", function(dataFromServer){
  console.log(dataFromServer.toString());
  rl.close();
  client.end();
});

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Enter some numbers ", function(answer){
  client.connect(5000, "127.0.0.1", function(){
    // this makes a TCP request to the server
    client.write(answer);
  });
});
