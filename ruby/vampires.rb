employees = 0
until employees * 1 > 0
puts "How many employees will be processed?(enter a number)"
  employees = gets.chomp.to_i
end


for i in (1..employees)

puts "Enter Your Name:"
  your_name = gets.chomp
puts "Ok #{your_name}, how old are you?"
  age = gets.chomp.to_i
puts "You're #{age} huh? What year were you born?"
  year_of_birth = gets.chomp.to_i

user = ""
until user == "yes" or user == "no"
  puts "Ahhhhh #{year_of_birth}. We serve garlic bread in the cafe. It's really good. Would you like to order some? (answer: yes or no)"
  user = gets.chomp
end

if user == "yes"
  bread = true
else
  bread = false
end

user_2 = ""
until user_2 == "yes" or user_2 == "no"
  puts "You want to enroll in our medical plan? (answer: yes or no)"
  user_2 = gets.chomp
end

if user_2 == "yes"
  medical = true
else
  medical = false
end

sunshine = false
user_3 = []
allergy = ""
until user_3.include?("done") || allergy == "sunshine"
  puts "Enter and allergies (type: done, when finished)"
  allergy = gets.chomp
  user_3.push(allergy)
end

if user_3.include?("sunshine")
  sunshine = true
  puts "Probably a vampire"
end

age_x = Time.new.year.to_i
responses = []
age_right = false

unless sunshine == true
  if (your_name == "Drake Cula") || (your_name == "Tu Fang")
    a = "Definitely a vampire"
    puts a
    responses.push(a)
  end

  if (age_x - year_of_birth != age) && (age_x -year_of_birth != (age + 1))
    age_right = false
    if (age_right == false) && medical == false && bread == false
    b = "Almost Certainly a vampire."
    puts b
    responses.push(b)
   end
  end

  if (age_x - year_of_birth == age) || (age_x - year_of_birth == (age + 1))
    age_right = true
    if age_right && (medical or bread) && (your_name != "Drake Cula") && (your_name != "Tu Fang")
     c = "Probably not a vampire."
     puts c
     responses.push(c)
   end
  end

  unless (your_name == "Drake Cula") || (your_name == "Tu Fang")
    if (age_x - year_of_birth != age) && (age_x - year_of_birth != (age + 1))
     age_right = false
      if ((age_right == false) && (medical == false && bread == true)) || ((age_right == false) && (medical == true && bread == false))
      d = "Probably a vampire."
      puts d
      responses.push(d)
      end
    end
  end # Unless yo have a vampire name

  if responses == []
  puts "results inconclusive"
  end
end ##unless sunshine = true
end ##end iterations
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."




