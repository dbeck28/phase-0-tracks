// Set variables to compare string lengths and to hold the longest phrase
// for each value in the array, compare the length and set the longest value if the phrase is longer than the previous longest value
// Print the phrase if it is the longest value

function longphrase(arr) {
  var longest = 0;
  var answer = "";
  for (var phrase = 0; phrase < arr.length; phrase++) {
    if (arr[phrase].length > longest) {
      var longest = arr[phrase].length;
      var answer = arr[phrase];
    }
  }
  console.log(answer);
}
// Set each object's keys to a variable (x and y)
// Compare the keys to assure they are the same
// If the keys are the same
  // Assign the values to seperate variables
// If the given values are the same
// return true
// otherwise return false
function sharevalue(obj1, obj2) {
  var x = Object.keys(obj1);
  var y = Object.keys(obj2);
  var a = "";
  var b = "";
  if ((x[0] === y[0]) && (x[1] === y[1])) {
    var a = Object.keys(obj1).map(function(key) {
      return obj1[key];
    });
    var b = Object.keys(obj2).map(function(key) {
      return obj2[key];
    });
  }
  if ((a[0]) === b[0] || (a[1] === b[1])) {
    console.log(true);
  } else {
    console.log(false)
  }
}

// Take an integer as an argument
// Set string_array to be the array of strings
// Set
// While the length of the string_array is less or equal to than the argument
  // randomize a string with 1 to 10 characters
  // push that string into the string_array



function randomstr(){
    max = 10
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    var string = "";
    for (var i = max; i > 0; --i) string += alphabet[Math.floor(Math.random() * alphabet.length)];
    return string;
}

function arr_o_strs(int) {
  string_array = [];
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  if (string_array.length <= int) {
    x = randomstr();
    string_array << x;
  } else {
    return string_array;
  }
}




console.log(longphrase(["apple", "orange", "nana"]))

console.log(sharevalue({name: "Steven", age: 54}, {name: "Tamir", age: 53}))

console.log(randomstr())

console.log(arr_o_strs(9))

