// First we need to be able to parse individual notes. Write a function called parseNote, that takes a string representing a single note (e.g. "C#*2" or "A") and returns a note object (e.g. {pitch: "C#", beats: 2}). If the user doesn't provide a number of beats (e.g. "C#") then set beats to 1.
//
// // Example usage
// parseNote("C#*2"); //=> { pitch: 'C#', beats: 2}
// parseNote("D"); //=> { pitch: 'D', beats: 1}

function parseNote(note) {
  note = string.split('*');
  var note = {};
  if ( string.length > 1 ) {
    note["pitch"] = note[0];
    note["beats"] = parseInt(note[1]);
  } else {
    note["pitch"] = note[0];
    note["beats"] = 1;
  }
  return note;
}

// parseNote("C#"));

function parseSong(string) {
  var noteArr = [];
  string = string.split(" ");

  for (var i = 0; i < string.length; i++) {
    noteArr.push(parseNote(string[i]));
  }
  return noteArr;
}

// parseSong();

// console.log(parseSong("C# B A*2"));
