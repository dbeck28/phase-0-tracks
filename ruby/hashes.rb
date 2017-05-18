# Create a form that gathers information about the user
# Feed that user info into a hash
# Allow the user to view the hash and make changes if necessary
client_info = {}

p "Client Name:"
client_info["client name"] = gets.chomp!

p "Age:"
client_info["client age"] = gets.chomp.to_i

p "Number of children"
client_info["number of children"] = gets.chomp.to_i

p "Decor theme:"
client_info["theme"] = gets.chomp

p "Home square footage:"
client_info["sq ft"] = gets.chomp.to_i

p "Favorite color:"
client_info["favorite color"] = gets.chomp

p client_info


p "Is all the information correct? If not you may change a section by entering it's key from the list above, otherwise type done:"

x = gets.chomp

#if the key exists in the client info hash
if client_info.has_key?(x)
  p "What would you like to change it to?"
  client_info[x] = gets.chomp
  #give a new value to the chosen key
end

p client_info

