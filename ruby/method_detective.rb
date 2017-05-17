# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, 'o')
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
p "Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual" << " suspects"
p "the usual" + " suspects"
p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".prepend("the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chomp('r')
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".split('')[1..-1].join('') #gives the desired outcome
p "The mystery of the missing first letter".slice!(0) #removes the first letter from the string and returns it, but the remaining string matches the desired output
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

p "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?) 122 is the character z's ASCII value.

p "How many times does the letter 'a' appear in this string?".count('a')
# => 4