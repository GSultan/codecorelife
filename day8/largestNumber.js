//Write a function called largestNumber that takes from an array of numbers the largest number.

var array = [10,5,3,7,8,3,1,7,557,3];

var largestNumber = function(array) {

	// console.log(Math.max(array.split()));

	//first set a variable to the first index position of the array
	max = array[0]
	// then interate a for loop of the array that compares each incremental array element to the first one . 
	for (var i=0; i<array.length; i++)  {
		
		if (array[i] > max ) {
			max = array[i]; 
		}
	 
	}
	// if it's bigger, set it to equal the first one 
	// in the end print the first one  


	console.log(max);
}

largestNumber(array);