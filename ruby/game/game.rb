
class Game
# a method to accept the answer to be guessed
# input: the answer (string) by one user to be guessed by another user
#steps:
  # Create a method that takes one word
  # Save and set that word as the answer
# output: the answer
  def answer(word)
    @answer = word
    p @answer
  end

end

# initialize a new instance of the game

# a method to accept the answer to be guessed
# input: the answer (string) by one user to be guessed by another user
#steps:
  # Create a method that takes one word
  # Save and set that word as the answer
# output: the answer

# a method to limit the amount of attempts a user can guess
# input: the length of the answer
# steps:
  # Allow the user to guess the answer as a whole or one letter at a time for as many times as the length of the word, setting a counter to keep track
  # For each guess, add it to an array of guesses, and add 1 to the counter...unless it is a guess that already exists in the array.
  # If it is a word in the array, give the user a message that it was previously guessed.
# output: an array of guessed words

# a method to display the state of the word to be guessed. If letters are guessed 1 at a time, display to the user the length of the word as "_"'s, with the letter guessed filled in. (ex: for the word "theme", if you guess e, you'll get __e_e.)
# input: the letter guessed, the answer
# steps:
  # for the length of the word, create a new string that is the length of the word using "_".
  # for the letter guessed, enter it in place into the new string.
# output: the new string after the guess

# a method that displays a congratulatory message if the user guesses the answer, or an antagonizing message if the max amount of guesses is reached.
# input: the answer, the counter
# steps:
  # if the answer is guessed, display a congratulatory message
  # if the counter is maxed out, display a taunting message
# output: a message
