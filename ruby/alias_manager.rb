def name_changer(str)
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  vowels = ["a", "e", "i", "o", "u"]
  new_name = str.split(' ')
      #splits the into two array items
  new_name[0], new_name[1] = new_name[1], new_name[0]
      #swap array items by index (swaps the names)
  new_name = new_name.join(" ")
      #makes a new string of the array
  new_name = new_name.split('')
  p new_name
  new_name2 = []
  new_name.map {|letter|
    if letter == "u"
      new_name2.push(a)
    elsif vowels.include?(letter)
      next_letter = vowels.index(letter) + 1
      letter = vowels[next_letter]
    end
    new_name2.push(letter)
  }
  p new_name2


end

name_changer("chip foose")

