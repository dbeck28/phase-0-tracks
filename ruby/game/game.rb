
class Game
  attr_accessor :revealer
  attr_accessor :counter
  attr_accessor :answer
  attr_accessor :guesses

  def initialize
    @counter = 0
    @revealer = []
    @is_over = false
    @answer = ""
    @guesses = []
  end

  def guess_answer(word)
    @answer = word
    p @answer
  end

  def revealer
   @revealer = ("_" * (@answer.length)).split("")
   p @revealer.join
  end

  def guess_counter(guess)
    @guesses << guess
    if @guesses.count(guess) == 1 #Only adds to counter if this is the first time the guess has been made
      @counter += 1
    end
    @guess = guess
    p @guesses
    p @counter
  end

  def rev_update
    @answer.split("").index.each do |letter|
      if (letter == @guess) && (@revealer[@answer.index(@guess)] == "_")
        @revealer.delete_at(@answer.index(@guess))
        @revealer.insert(@answer.index(@guess), @guess)
      end
    end
    p @revealer.join
  end

  def final(word)
    if word == @answer
      puts "Congrats! You guessed it in #{@counter.to_s} tries!"
    end
    if (guesses.length > @answer.length) && (word != @answer)
      puts "No dude, you're a loser"
    end
  end

end

puts "New Game? (Y/N)"
new_game = gets.chomp

if new_game == "y"
  choco = Game.new
end

p "Player 1, enter a word to be guessed"
@answer = choco.guess_answer(gets.chomp)
choco.revealer

until choco.counter > @answer.length
  p "Player 2, make a guess:"
  choco.guess_counter(gets.chomp)
  choco.rev_update
end

p "One last try, what's your answer?"
choco.final(gets.chomp)





