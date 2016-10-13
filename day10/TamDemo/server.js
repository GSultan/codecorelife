var net = require("net");
//
var capitalize = function(name) {
  return name.charAt(0).toUpperCase() + name.slice(1);
}

var server = net.createServer(function(socket){
  socket.on("data", function(receivedData){
    console.log("Received Data: " + receivedData);
    socket.write(capitalize(receivedData.toString()));
  });
});

console.log("Server listing on port 5000");
server.listen(5000, "127.0.0.1");
