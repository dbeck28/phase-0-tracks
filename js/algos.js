// Set variables to compare string lengths and to hold the longest word
// for each value in the array, compare the length and set the longest value if the word is longer than the previous longest value
// Print the word if it is the longest value
function longword(arr) {
  var longest = 0
  var answer = ""
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > longest) {
      var longest = arr[i].length;
      var answer = arr[i]
    }
  }
  console.log(answer);
}

console.log(longword(["apple", "orange", "nana"]))