puts "Enter Your Name:"
  your_name = gets.chomp
    sleep 1 # 1 sec pause, before the next question
puts "Ok #{your_name}, how old are you?"
  age = gets.chomp.to_i
    sleep 1
puts "You're #{age} huh? What year were you born?"
  year_of_birth = gets.chomp.to_i
    sleep 1

bread = ""
until bread == "yes" or bread == "no"
  puts "Ahhhhh #{year_of_birth}. We serve garlic bread in the cafe. It's really good. Would you like to order some? (answer: yes or no)"
  bread = gets.chomp
end

medical = ""
until medical == "yes" or medical == "no"
  puts "You want to enroll in our medical plan? (answer: yes or no)"
  medical = gets.chomp
end

if (your_name == "Drake Cula") or (your_name == "Tu Fang")
  abort ("Definitely a vampire") #abort to end program regardless of other conditions
end


if (Time.new.year - year_of_birth == age or age + 1) && (bread == "yes") && (medical == "yes")
  puts "Probably not a vampire"
elsif (Time.new.year - year_of_birth != age or age + 1) && (bread == "no") or (medical == "no")
  puts "Probably a vampire"
elsif (Time.new.year - year_of_birth != age or age + 1) && (bread == "no") && (medical == "no")
  puts "Almost Certainly A Vampire"
else
  puts "results inconclusive"
end


