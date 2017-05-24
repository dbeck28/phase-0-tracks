class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "#{"Woof " *int}!"
  end

  def roll_over()
    puts "*Rolls over*"
  end

  def dog_years(int)
    int * 7
  end

  def sniff(item)
    puts "I sniffed the #{item}"
  end


end

tj = Puppy.new
tj.fetch("shoe")
tj.speak(9)
tj.roll_over
p tj.dog_years(5)
tj.sniff("toilet")

