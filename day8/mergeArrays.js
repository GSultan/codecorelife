// Write a JavaScript function to merge two arrays and removes all duplicates elements. For example:

// console.log(merge(array1, array2));
// // [1,2,3,4,5]

var array1 = [1, 2, 3];
var array2 = [3,4,5];
var newArray = [];
newArray = array1.concat(array2);


function remove_duplicates(newArray) {


	// 1. combine two arrays together and test 


    var obj = {};
    for (var i = 0; i < newArray.length; i++) {
        obj[newArray[i]] = true;
    }
    newerArray = [];
    for (var key in obj) {
        newerArray.push(key);
    }
    return newerArray;


}

console.log(remove_duplicates(newArray));