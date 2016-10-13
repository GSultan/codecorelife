var net = require("net");
var readline = require("readline");

var client = new net.Socket();

client.on("data", function(dataFromServer){
  console.log(dataFromServer.toString());
  rl.close();
});

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("What is your name? ", function(answer){
  client.connect(5000, "127.0.0.1", function(){
    // this makes a TCP request to the server
    client.write(answer);
  });
});
