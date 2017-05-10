puts "What is the hamsters name?"
hamster_name = gets.chomp

hamster_volume = 0
until hamster_volume >= 1 && hamster_volume <= 10
  puts "What is the hamsters volume level 1-10?"
  hamster_volume = gets.chomp.to_i
end

puts "What color fur does it have?"
fur_color = gets.chomp

adoption_candidate = ""
until adoption_candidate == "Y" || adoption_candidate == "N"
  puts "Is the hamster a good candidate for adoption? Y/N"
  adoption_candidate = gets.chomp.upcase
end

hamster_age = nil
puts "How old is the hamster?"
hamster_age = gets.chomp.to_i

puts "#{hamster_name} is rated at #{hamster_volume} volume, it has #{fur_color} fur."
puts "It is #{hamster_age} years old."
puts "If someone asked me (Y/N) whether or not I would adopt this hamster I would say #{adoption_candidate}."
