// morning cohort 15!

// var myArray = new Array();
// var myArray = [];
// var myArray = [1, 2, true, "Good Morning"];
//
// // console.log(myArray[0]);
//
// myArray.push("milk");
// myArray.length
//
// // LOOPS
// // for (var i=0; i<myArray.length; i++) {
// //   console.log(myArray[i]);
// // }
//
// var i = 0;
//
// // while (i<myArray.length) {
// //   console.log(myArray[i]);
// //   i++;
// // }
// //
// while (i<myArray.length) {
//   // console.log(++i);
//   console.log(myArray[i++]);//????
// }
//
// var first = ["hello", 5 'a'];
// first[1] = 6;
//
// var second = [];
//
// for (var i=0; i<101; i++) {
//   second.push(i);
// }
//
// second.length;
//
// // for (var i=0; i<=100; i++)
//
// var numbers = [0, 5, 6, -12];
// var sum = 0;
//
// for (var i=0; i<numbers.length; i++) {
//   sum = sum + numbers[i];
// }
//
// var words = ["apple", "dog", "computer", "cup"];
//
// for (var i=0; i<words.length; i++) {
//   console.log(words[i] + " has " + words[i].length + " characters.");
// }

// .split
// .join
//
// var greeting = "hello";
// var charArray = greeting.split("");
// console.log(greeting.split(""));
//
// console.log("charArray: " + charArray);
//
// for (var i=0; i<charArray.length; i++) {
//   console.log(charArray[i]);
// }
//
// var sentence = prompt("Please enter a sentence: ");
// console.log(sentence);
//
// //alert how many words are in the sentence?
// var words = sentence.split(" ");
// alert("There are " + words.length + " in the sentence.");

// var nums = [];
// for (var i=0; i<100; i++) {
//   nums.push(i);
// }
//
// alert(nums.join(""));

// function


// function sayHello() {
//   console.log("hello");
// }
//
// sayHello();
//
// function sayHello() {
//   return "hello";
// }
//
// console.log(sayHello());

// anonymous function being assigned to a variable called jacob?
// var jacob = function() {
//   console.log("hello");
// }
//
// jacob();
//
// var thaisa = jacob;
//
// thaisa();
//
// // create a doubleIt function that doubles the number pass in
// function doubleIt(x) {
//   // return x * 2;
//   console.log( x * 2 );
// }
//
// var doubleIt = function(x){
//   console.log( x * 2 );
// };
//
// doubleIt(5);
//
// // named function, anonymous function format
//
// function insult(name) {
//   console.log(name + ", you doofus!");
// }
//
// // more common
// var insult = function(name) {
//   console.log(name + ", you doofus!");
// };
//
// function increment(x) {
//   // pre-incrementing will increment the number before returning it
//   return ++x;
// }
//
// var increment = function(x) {
//   return ++x;
// }
//
// console.log(increment(50));
//
// // var newArray = [];
//
// function doubleArray(array) {
//   for (var i=0; i<array.length; i++) {
//       array[i] = array[i] * 2;
//   }
//
//   console.log(array);
//   // return array;
// }
//
// doubleArray([1,2,3,4]);
//
// var doubleArray = function(array) {
//   for (var i=0; i<array.length; i++) {
//       array[i] = array[i] * 2;
//   }
//
//   console.log(array);
//   // return array;
// };
//
// doubleArray([1,2,3,4]);
//
// var word = "hello";
// word[3] = 'j';
// console.log(word[3]);
// console.log(word);
//
// var array = [1,2,3,4];
// array[3] = 'j';
// console.log(array);


// objects
// var myObject = new Object();

// var myObject = {
//   firstName: "Jacob",
//   lastName: "Tran",
//   age: 37,
//   eyeColor: "brown"
// };
//
// console.log(myObject.firstName);
// console.log(myObject.lastName);
// console.log(myObject.age);
// console.log(myObject.eyeColor);
// console.log(myObject.height);
//
// myObject.height = "5'7";
// console.log(myObject.height);
//
// var me = {
//   name: "Harambe",
//   age: "too young",
//   occupation: "gorilla"
// };
//
// me.occupation = "javascript expert";
// me.occupation = "hero";
//
// me.skills = ['ruby', 'rails', 'javascript'];

// console.log(me.skills[0]);

// var someone = {};
// someone.name = "Jacob";
//
// // nested objects
//
// var obj = {
//   a: [1, 2, 3],
//   b: {c: 6}
// };
// //            3      +     6      =     9
// console.log(obj.a[2] + obj.b.c);
//
// var me = {
//   // first name: "Jacob",
//   // last name: "Tran"
// }
//
// me["first name"] = "Jacob";
// me["last name"] = "Tran";
//
// var obj = {
//   a: 5,
//   b: 6
// }
//
// // console.log(obj[a] + obj[b]);
// console.log(obj.a + obj.b);
// console.log(obj["a"] + obj["b"]);

// exercise
// var user = {
//   name: "Chris",
//   age: 19
// }
//
// var displayInfo = function( obj ){
//   console.log(obj.name + " is " + obj.age + " years old.");
// };
//
// displayInfo(user);
//
// var wordLengths = function( sentence ){
//   var words = sentence.split(" ");
//   var obj = {};
//
//   for (var i=0; i<words.length; i++) {
//     obj[words[i]] = words[i].length;
//   }
//   return obj;
// };
//
// console.log(wordLengths("Hello world"));
//
// // { "Hello": 5, "world": 5 }
//
//
//
// var greeting = "hello world";
//
// var letterCounter = function( word ) {
//   var charArray = word.split(""); // ['h','e','l','l','o']
//   var obj = {};
//
//   for (var i=0; i<charArray.length; i++) {
//     if (charArray[i] != " ") {
//       if (charArray[i] in obj) {
//         obj[charArray[i]]++;
//       }
//       else {
//         obj[charArray[i]] = 1;
//       }
//     }
//   }
//   // for (var i=0; i<charArray.length; i++) {
//   //   obj[charArray[i]] = 0;
//   // }
//   // for (var i=0; i<charArray.length; i++) {
//   //   obj[charArray[i]] += 1;
//   // }
//   return obj;
// };
//
// // "hello" comes in
// // { "h": 1, "e": 1, "l": 2, "o": 1} to come out
// console.log(letterCounter(greeting));
//
// delete me.age;
// delete me["age"];
//
// var prop = "age";
// delete me[prop];
//
// for (var prop in obj) {
//
// }
//
// var me = {
//   firstName: "Jacob",
//   lastName: "Tran",
//   age: 37
// }
//
// for (var key in me) {
//   console.log("prop: " + key);
//   console.log("value: " + me[key]);
// }

// make sure console is an object?
// console.log(typeof(console));
//
// for (var prop in console) {
//   console.log("console object prop: " + prop);
//   console.log("console object value: " + console[prop]);
// }

// var morningRoutine = function() {
//   console.log("take a shower");
//   console.log("eat breakfast");
//   console.log("get changed");
//   console.log("pack bag");
//   console.log("catch bus");
//   console.log("learn at codecore");
// };
//
// var afternoonRoutine = function() {
//   console.log("eat lunch");
//   console.log("lab time");
// };
//
// var eveningRoutine = function() {
//   console.log("TA time");
//   console.log("sleep");
// };
//
// function morningRoutine() {
//   console.log("take a shower");
//   console.log("eat breakfast");
//   console.log("get changed");
//   console.log("pack bag");
//   console.log("catch bus");
//   console.log("learn at codecore");
// }
//
// function afternoonRoutine() {
//   console.log("eat lunch");
//   console.log("lab time");
// }
//
// function eveningRoutine() {
//   console.log("TA time");
//   console.log("sleep");
// }
//
// var life = {
//   meaning: 42,
//   morning: morningRoutine,
//   afternoon: afternoonRoutine,
//   evening: eveningRoutine
// };
//
// console.log(life.meaning);
// life.morning();
// life.afternoon();
// life.evening();

// cloning
var sheep = { name: "Dolly", colour: "white", sex: "female", baby: {name: "Parton", colour: "beige"} };

var sheep2 = sheep;

var hash = { a: 10, b: 20, c: 30 };
for (key in hash) {
  console.log(hash[key]); // returns value
}

//
// var clone = function( obj ) {
//   var clonedObj = {};
//
//   for (var prop in obj) {
//     clonedObj[prop] = obj[prop];
//   }
//
//   return clonedObj;
// }
//
// var sheep2 = clone(sheep);
//
// console.log(sheep);
// console.log(sheep.name);
// console.log(sheep2);
// console.log(sheep2.name);

var meObject = {
  name: "Jacob",
  age: 37,
  gender: "male"
}

for (meProperties in meObject) {
  console.log(meProperties);
}

for (meProperties in meObject) {
  console.log(meObject);
}

for (meProperty in meObject) {
  console.log(meObject[meProperty]);
}


for (meProperty in meObject) {
  console.log(meProperty + " is " + meObject[meProperty]);
}
// name
// age
// gender



//
