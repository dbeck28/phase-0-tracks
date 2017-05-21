# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each { |item|
  p item
  p "*"
}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies.sort_by! { |item|
  item.downcase #used to account for capitalized words that wouldn't otherwise sort correctly
}
p zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def array_checker (arr, str)
arr.each { |item|
  if item == str
    p "Yes #{str} is in stock!"
  end
}
end

array_checker(zombie_apocalypse_supplies, "hatchet")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def vitals_only(arr)
  if arr.length > 5
    arr = arr[0..4]
  end
  p arr
end

vitals_only(zombie_apocalypse_supplies)


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

# Hash Drills
def array_together (arr,arrx)
  arr << arrx
  arr = arr.flatten #use flatten to turn an array containing arrays into one array
  arr.uniq! #use unique to have only unique items in an arrar
  p arr
end

array_together(zombie_apocalypse_supplies,other_survivor_supplies)

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |key, value|
  p key
  p "-"
  p value
  p "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
def extinction_deletion(hash)
  hash.delete_if {|key, value| value > 1999}
end

p extinction_deletion(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def add_years(hash)
  hash.each { |key, value|
    hash[key] = value + 3 #Access the given hash key to edit its value
  }
end

p add_years(extinct_animals)


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def extinction_checker (hash, str)
  hash.each { |key, value|
    if str == key
      p "Yes #{str}s are extinct"
    end
  }
end

extinction_checker(extinct_animals, "Andean Cat")
extinction_checker(extinct_animals, "Dodo")
extinction_checker(extinct_animals, "Saiga Antelope")
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals.delete_if {|key,value| key == "Passenger Pigeon"}
p extinct_animals
