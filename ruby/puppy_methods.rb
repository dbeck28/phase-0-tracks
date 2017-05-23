class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#The speak method will take an integer
#It will then return woof as many times as that integer
  def speak(x)
    p ("Woof! " * x)
  end

#The dog years method will convert the puppy's human age to its age in dog years.
  def dog_years(y)
    p y * 7
  end

#The jump method will take an integer that represents the number of feet in the air the puppy jumps
  def jump(x)
    x.to_s
    p "I jumped #{x} feet in the air!"
  end

#The initialize method will initialize a new instance of the puppy class
  def initialize
    p "Initializing new puppy instance ..."
  end

end #end of puppy class

otis = Puppy.new
otis.fetch("carrot")
otis.speak(7)
otis.dog_years(2)
otis.jump(100)

#The speak method will take an integer
#It will then return woof as many times as that integer


