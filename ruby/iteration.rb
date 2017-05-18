# Define a method that shows the places I've visited
# Use the yield function to call variables to be used in the block
#
def i_visited
  place1 = "The Field Museum"
  place2 = "Chicago"
  puts "This is before the block has run..."
  yield(place1, place2)
end

i_visited { |place1, place2| puts "The last time I went to #{place2}, I visited #{place1}" }

p "...and this is after."

#############################################

players = ["Curry", "Leonard", "James", "Thomas", "Ginobili"]

franchises = {"cleveland" => "cavaliers", "san antonio" => "spurs", "golden State" => "warriors", "boston" => "celtics"}

##############################################

p players #prints player names

players.each do |player| #for each player
  puts player #print his name
  player.concat( "(C)") #and and a "C" for Captain
end

p players

#############################################

p franchises

franchises.each do |city, team|
  puts "The #{team} play in #{city}."
end

p franchises

###############################################

p players

players.map! do |player|
  puts player
  player.upcase
end

p players
################################

#release 2, 1
numbers = [1,2,3,4,5,6,7,8,9,10]

hash_numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,}

#remove numbers less than 3

p numbers

numbers.delete_if {|number| number < 3}

p numbers

#remove numbers less than or equal to 3 for the hash

p hash_numbers

hash_numbers.delete_if {|word, digit| digit <= 2}

p hash_numbers

#keep numbers greater than 4
p numbers

numbers.keep_if {|number| number > 4}

p numbers

#keep numbers greater than or equal to 4

p hash_numbers

hash_numbers.keep_if {|word, digit| digit >= 4}

p hash_numbers

#remove numbers > 8

p numbers

numbers.reject!{|number| number > 8}

p numbers

#remove numbers > 4

p hash_numbers

hash_numbers.reject! {|word, digit| digit > 4}

p hash_numbers

