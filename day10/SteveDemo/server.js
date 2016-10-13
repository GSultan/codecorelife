var net = require('net');
//the module you're calling you have to call by it's correct name
// the 'net' gives you the tool , the module , to setup the server with that
// net could be anyt variable, n
// define the port your server is gonna use
var PORT = 8080;
var HOST = '127.0.0.1';

var server = net.createServer(function (socket) {
  //use socket object here
  socket.on('data', function (data) {
    console.log('Received from client '+ data.toString());
    socket.write(reverse(data.toString())); // ok i get data from client on the socket , and i'm just gonna write it back to you


    // the purpose of all this is to log the information from the user
    // when the function gets data,  run the function for me
  })
  // ^^ these are events, it's saying , when data goes into the socket , or the pipe , do what comes after , and what will be done is the function we pass it
});
//once we create the server it's not yet started
server.listen(PORT, HOST);
console.log('server listening on port' + HOST + ':' + PORT + '...')
//
function reverse(str) {
  return str.split('').reverse().join('');
}
// listen takes to argument, first the posrt ,
//if you run it at this stage, the server will run but nothing is happening



// in general port 8080 is not used
// the function that we're passong as argument will run whenver client tries to connect ot the server
// this function will be called whenever client connects to the seerver
//socket is the object that represents the connection , it's the 2 way pipe
