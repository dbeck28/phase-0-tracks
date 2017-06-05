// Set variables to compare string lengths and to hold the longest phrase
// for each value in the array, compare the length and set the longest value if the phrase is longer than the previous longest value
// Print the phrase if it is the longest value

function longphrase(arr) {
  var longest = 0
  var answer = ""
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > longest) {
      var longest = arr[i].length;
      var answer = arr[i];
    }
  }
  console.log(answer);
}

// Compare the keys of both values to assure they are the same
// If the keys are the same
  // Assign the values to seperate variables
// If the given values of the keys are the same
// return true
function sharevalue(obj1, obj2) {
  var x = Object.keys(obj1);
  var y = Object.keys(obj2);
  var a = ""
  var b = ""
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
  }
  if ((a[0]) != b[0] && (a[1] != b[1])) {
    console.log(false);
  }
}

console.log(longphrase(["apple", "orange", "nana"]))

console.log(sharevalue({name: "Steven", age: 54}, {name: "Tamir", age: 54}))

