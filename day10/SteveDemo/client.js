var readline = require('readline');
var net = require('net');

var PORT = 8080;
var HOST = '127.0.0.1';
//we need to tell net where is our server so we can connect to it

// load library readline to read text from the user
var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var socket = net.createConnection({port: PORT, host: HOST})

socket.on('data', function(data) {
  console.log('Server responded with: ' + data.toString());

  socket.end();
})
// we have to use a method on net called createConnection (there are others) , what we get is the socket object , that pipe where we can transfer data

rl.question('What do you want to reverse\n?', function(userInput) {
// this is the code that keeps the session running
  socket.write(userInput); //whatever user writes we're gonna write it on the socket and the server is gonna get it
  //sends info down the socket
  console.log('user typed: ' + Input);

  rl.close();
// the function will only run once the user enters some text
});
//if you want to read info from the console. create an interface
// minimum of two arguments
//get info to the console, and then output it to the console.
