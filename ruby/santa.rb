class Santa
  attr_accessor :age, :ethnicity, :gender

  def initialize(gender = "n/a", ethnicity = "n/a")
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(1..140)
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}"
  end

  def celebrate_birthday
    @age += 1
  end


  #def gender_setter(gender)
   # @gender = gender
  #end

  #def ethnicity
   # p @ethnicity
  #end

  #def age
   # p @age
  #end


  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

end

genders = ["male", "female", "transgender", "gender fluid", "other", "N/A"]

ethnicities = ["black", "Hispanic", "white", "Asian-Pacific", "other"]

santas = []
#For the length of the genders array, create new instances of Santa.new

=begin
gender.times do |x|
  santas << Santa.new(genders[x], ethnicities[x])
end

p santas
p santas.length
jerry = Santa.new
p jerry
jerry.celebrate_birthday
p jerry
jerry.get_mad_at("Vixen")
p jerry
p jerry.age
p jerry.ethnicity
jerry.ethnicity = "Asian"
p jerry.ethnicity
jerry.gender = "male"
p jerry
=end

200.times do |x|
  p Santa.new(genders.sample, ethnicities.sample)
end


