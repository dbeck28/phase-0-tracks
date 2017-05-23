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

class Car

  def initialize
    p "Revving up another car..."
  end
# The accelerator method will take a number and return a message entailing the speed the car accelerated to
  def accelerator(number)
    number.to_s
    p "The car accelerated to #{number} kilometers per hour..."
  end
# The decibels method will take a number and return a message entailing the level of decibels of the car's muffler
  def decibels(number)
    number.to_s
    p "The motor's decibel level was #{number}"
  end
end #end of car class

#Creates 50 instances of the car class #Stores each instance in an array called Cars
cars = 50.times.collect { Car.new }

p cars[0]

#For each instance of Car in the Cars array
#Prints the name of the car
#Runs the accelerator and decibels methods on the car
cars.each do |car|
  p car
  car.accelerator(rand(0..200)) #gives  a random integer between 0 and 200
  car.decibels(rand(0..200))
end


