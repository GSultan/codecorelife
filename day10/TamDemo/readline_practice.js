// // In this case the `tester.js` file exports only a string so text will be a string
// var text = require("./tester.js");
// console.log(text);
//
// // In this case `greeter.js` file exports a function so greetMe will be a function
// var greetMe = require("./greeter.js");
// console.log(greetMe('Tam'));

// we use require similar to how we use `require` in Ruby to import a library
// of code, usually in the form of function that we can use in our code.
var readline = require("readline");

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("What is your name?", function(answer){
  console.log("Hello " + answer + "! Welcome to Node.js");
  rl.close();
});
