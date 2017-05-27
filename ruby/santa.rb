class Santa
  def initialize(gender = "n/a", ethnicity = "n/a")
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

  def age
    p @age
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

  def ethnicity
    p @ethnicity
  end

  def gender_setter(gender)
    @gender = gender
  end
end

genders = ["male", "female", "transgender", "gender fluid", "other", "N/A"]

ethnicities = ["black", "Hispanic", "white", "Asian-Pacific", "other"]

santas = []
#For the length of the genders array, create new instances of Santa.new with that takes ra
genders.length.times do |x|
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
jerry.ethnicity
jerry.gender_setter("male")
p jerry



