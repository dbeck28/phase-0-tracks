## Initiate a loop through the given string
## For each letter of a given string we want it to advance to the next letter, for example a -> b

def encrypt(string)
  current_index = 0
  while current_index <= (string.length - 1)
    puts string[current_index].next
    current_index += 1
  end
end

encrypt("test")