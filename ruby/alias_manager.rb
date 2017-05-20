str = ""
def name_changer(str)
  consonants = "bcdfghjklmnpqrstvwxyzb".split('') #extra b included to avoid edge case
  vowels = ["a", "e", "i", "o", "u", "a"] #extra 'a' included to avoid edge case
  new_name = str.downcase.split(' ')
              #splits the into two array items
  new_name[0], new_name[1] = new_name[1], new_name[0]
              #swap array items by index (swaps the names)
  new_name = new_name.join(" ")
              #makes a new string of the array
  new_name = new_name.split('')
  new_name2 = []
  new_name.map {|letter|
    if vowels.include?(letter)
              #if the letter is included in the vowels array
      next_letter = vowels.index(letter) + 1
              #set a new variable called next_letter to the next letter in the array vowels
      letter = vowels[next_letter]
    end
    new_name2.push(letter)
  }
  #follow same steps for consonants
  final_name = []
  new_name2.map {|letter|
    if consonants.include?(letter)
      next_letter = consonants.index(letter) + 1
      letter = consonants[next_letter]
    end
    final_name.push(letter)
  }
    final_name = final_name.join("")
    final_name = final_name.split(" ")
    #split the final_name at " " to prepare to capitalize separate words, like the first name and last name
  final_name.map {|word|
    word = word.capitalize!
  }
  if final_name.join(" ") == "Raov"
    #Raov is 'quit' converted
    p "done"
  elsif
    p final_name.join(" ")
  end
end

#allow users to enter names until the decide to quit
until str == "quit"
p "Enter a name so that we can convert it:"
  str = gets.chomp
name_changer(str)
end
