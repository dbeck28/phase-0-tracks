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

