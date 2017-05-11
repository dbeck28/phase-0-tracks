## Initiate a loop through the given string
## Insure that the while loop is constrained to the length of the given string
## For each letter of the given string we want it to advance to the next letter, for example a -> b

def encrypt(string)
  current_index = 0
  while current_index <= (string.length - 1)
    if string[current_index] == "z"
      string[current_index] = "a" #for edge cases
    else string[current_index] = string[current_index].next
    end
    current_index += 1
  end
  return string
end


# Inititate a loop through the given string
# Insure that the while loop is constrained to the length of the given string
# For each letter in the string we want it to transform the the letter before it in the alphabet. b -> a
# Use the alphabet to find index of the letter before the given index of the string

# alphabet = "abcdefghijklmnopqrstuvwxyz"

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  current_index = 0
  while current_index <= (string.length - 1)
    previous_letter = alphabet.index(string[current_index]) - 1 ## b would give you the index of a, which is 0
    string[current_index] = alphabet[previous_letter]
    current_index += 1
  end
  return string #insure that the method returns a correct string, puts method did not work when encrypt was nested within decrypt
end

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))

puts "Enter your password:"
password = gets.chomp
puts "Would you like to decrypt or encrypt"
answer = gets.chomp

if answer == "decrypt"
  puts decrypt(password)
elsif answer == "encrypt"
  puts encrypt(password)
else
  puts "invalid input"
end