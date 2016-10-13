// Write TCP server and client in Node.js. The client server should be able to send a list of numbers like: 1,2,5,3,7,23,5. The server should respond: the largest number is 23.

var net = require("net");
//
// 
// var PORT = 8080;
// var HOST = '127.0.0.1'

var largest = function(numbers) {
  return Math.max.apply(Math, numbers.toString().split('') );
  };

  // name.charAt(0).toUpperCase() + name.slice(1);

// Array.max = function( array ){
//     return Math.max.apply( Math, array );
// };


// net has a method that gives back a server object {can contain methods, vars}, calls whatever function you want that takes socket as argument. Socket= object. Has a method called 'on'  , which you tell it to look for the type of events that are determined by the first argument, in this case "data", event, can also have on event and off event . Whenever receive data, call the 2nd argument , which in this case is a function. That function, receives the socket's data as argument , then you do whatever you want with it (in this case p it), and at that time write back something to the client or wherever. 
var server = net.createServer(function(socket){
  socket.on("data", function(receivedData){
    console.log("Received Data: " + receivedData.toString());
    socket.write(largest(receivedData).toString());
  });
});

console.log("Server listening on port 5000");
server.listen(5000, "127.0.0.1");
