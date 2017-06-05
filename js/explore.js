// Convert the string to an array by using the split method
// Use the reverse method on that array
// Use the join method to convert the reversed array to a string
// return the string

function reversestr(str) {
  var orig_str = str.split("");
  var new_str = orig_str.reverse().join("");
  return new_str;
}

var answer = reversestr("Yolo");

if (6 == (2*3)) {
console.log(answer);
}
