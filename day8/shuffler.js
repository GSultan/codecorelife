// Create a javascript object that stores deck of cards. 

// - Add a print method on it that will print the cards in order.
// - Add a method shuffle that will shuffle the cards
// - Add a randomCard method that give your a random card from your collection

// if need to add to html file , in the script just write src = ........js if it's in the same directory 

// var cardDeck = function (cards) {

function card(name, suit){
	this.value = value;
	this.name = name;
	this.suit = suit;
}

// var obj = {
//   a: [1, 2, 3],
//   b: {c: 6}
// };
// //            3      +     6      =     9
// console.log(obj.a[2] + obj.b.c);

function deck(){
	this.names = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'];
	this.suits = ['Hearts','Diamonds','Spades','Clubs'];
	var cards = [];
  


    for( var s = 0; s < this.suits.length; s++ ) {
        for( var n = 0; n < this.names.length; n++ ) {
            // cards.push( new card( n+1, this.namesn], this.suits[s] ) );
            cards.push({ name: this.names[n], suit: this.suits[s] } );

        }
    }
    // 
    // make function that gives a random number based on length of the array , from one to 52 
    // use [i] notation 

    return cards;
}

function random(cardArray) {
  	
  	return cardArray[Math.floor((Math.random() * cardArray.length) + 1)];
}

function shuffle(cardArray) {
    var j, tempNum, i;
    for (i = cardArray.length; i; i--) {
        j = Math.floor(Math.random() * i);
        tempNum = cardArray[i - 1];
        cardArray[i - 1] = cardArray[j];
        cardArray[j] = tempNum;
    }

    return cardArray
}


console.log(shuffle(deck()));

// console.log(deck());
// console.log(random(deck()));