# A simple workout builder that allows you to randomly build body-building workouts based on lists of exercises. It allows users to add more exercises as they come across them.
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("workout.db")
@db = db

# create a table filled with arm axercises
create_arm_exercises_table = <<-SQL
create table IF NOT EXISTS arm_exercises (
  name VARCHAR(255),
  reps VARCHAR(255)
)
SQL

db.execute(create_arm_exercises_table)

def add_arm_exercise(db, name, reps)
  db.execute("INSERT INTO arm_exercises (name, reps) VALUES (?, ?)", [name, reps])
end

=begin
add_arm_exercise(db, "db curls", "4 sets of 10")
add_arm_exercise(db, "tricep cable extensions", "4 sets of 10")
add_arm_exercise(db, "dips", "4 sets of 10")
add_arm_exercise(db, "EZ Bar Curls Heavy", "4 sets of 6 - 8")
add_arm_exercise(db, "hammer curls", "4 sets of 10")
add_arm_exercise(db, "db bench press light", "4 sets of 20 - 25")
=end

arm_exercises = db.execute("SELECT * FROM arm_exercises")
# p arm_exercises.class
# p arm_exercises

# -------------------------------------------------------

# create a table of leg exercises

create_leg_exercises_table = <<-SQL
create table IF NOT EXISTS leg_exercises (
  name VARCHAR(255),
  reps VARCHAR(255)
)
SQL

db.execute(create_leg_exercises_table)

def add_leg_exercise(db, name, reps)
  db.execute("INSERT INTO leg_exercises (name, reps) VALUES (?, ?)", [name, reps])
end

=begin
add_leg_exercise(db, "heavy barbell squats", "4 sets of 8 - 10")
add_leg_exercise(db, "heavy barbell lunges", "4 sets of 8 - 10")
add_leg_exercise(db, "leg curls", "4 sets of 10 - 12")
add_leg_exercise(db, "leg extensions", "4 sets of 10 - 12")
add_leg_exercise(db, "hip cable extensions", "4 sets of 10 - 12")
add_leg_exercise(db, "calf raises", "5 sets of 25")
=end

leg_exercises = db.execute("SELECT * FROM leg_exercises")

#-------------------------------------------------------

# create a table of shoulder exercises
create_shoulder_exercises_table = <<-SQL
create table IF NOT EXISTS shoulder_exercises (
  name VARCHAR(255),
  reps VARCHAR(255)
)
SQL

db.execute(create_shoulder_exercises_table)

def add_shoulder_exercise(db, name, reps)
  db.execute("INSERT INTO shoulder_exercises (name, reps) VALUES (?, ?)", [name, reps])
end

=begin
add_shoulder_exercise(db, "heavy dumbbell shoulder press", "4 sets of 6 - 8")
add_shoulder_exercise(db, "shoulder shrugs moderate weight", "4 * As many as possible")
add_shoulder_exercise(db, "shoulder circuit", "4 * (4 * 10)")
add_shoulder_exercise(db, "cable rear delt flys", "4 sets of 12 - 15")
add_shoulder_exercise(db, "dumbbell rear delt flys", "4 sets of 12 - 15")
add_shoulder_exercise(db, "pull-ups", "4 * as many as possible")
=end

shoulder_exercises = db.execute("SELECT * FROM shoulder_exercises")

#-------------------------------------------------------

# create a table of back exercises

create_back_exercises_table = <<-SQL
create table IF NOT EXISTS back_exercises (
  name VARCHAR(255),
  reps VARCHAR(255)
)
SQL

db.execute(create_back_exercises_table)

def add_back_exercise(db, name, reps)
  db.execute("INSERT INTO back_exercises (name, reps) VALUES (?, ?)", [name, reps])
end

back_exercises = db.execute("SELECT * FROM back_exercises")
=begin
add_back_exercise(db, "heavy deadlift", "4 sets of as many as possible")
add_back_exercise(db, "hex bar heavy deadlift", "4 sets of 5 - 8")
add_back_exercise(db, "lat pulldowns", "4 sets of 10 - 12")
add_back_exercise(db, "upright rows", "4 sets of 8 - 10")
add_back_exercise(db, "t-bar rows", "4 sets of 8 - 10")
add_back_exercise(db, "pullups", "4 sets of as many as possible")
=end

# create a method for users to add exercises to the database
def add_an_exercise
  p "What body part is this exercise for? enter: 1 for arms, 2 for legs, 3 for shoulders, 4 for back"
  x = gets.chomp.to_i
  p "What is the exercise?"
  name = gets.chomp
  p "What about the reps?"
  reps = gets.chomp
   if x == 1
      @db.execute("INSERT INTO arm_exercises (name, reps) VALUES (?, ?)", [name, reps])
   elsif x == 2
      @db.execute("INSERT INTO leg_exercises (name, reps) VALUES (?, ?)", [name, reps])
   elsif x == 3
      @db.execute("INSERT INTO shoulder_exercises (name, reps) VALUES (?, ?)", [name, reps])
   elsif x == 4
      @db.execute("INSERT INTO shoulder_exercises (name, reps) VALUES (?, ?)", [name, reps])
   else
    p "invalid entry"
   end
end
#-------------------------------------------------------

#Workout App

#Allow the user the opportunity to add new exercises to their routines
new_one = "yes"
until new_one != "yes"
puts "Would you like to add a new exercise?(yes or no)"
new_one = gets.chomp
  if new_one == "yes"
    add_an_exercise
  elsif (new_one != "yes") and (new_one != "no")
    puts "invalid entry"
  end
end

puts "Which body parts are you working on today?"
puts "Enter 1 for arms, 2 for legs, 3 for shoulders, or 4 for back"
answer = gets.chomp.to_i

puts "Are you doing a long workout or a short one?"
puts "Enter 'short' or 'long'"
workout_length = gets.chomp

# Builds workout based on conditions
if (answer == 1) && (workout_length == "short")
  puts routine = arm_exercises.sample(4)
elsif (answer == 1) && (workout_length == "long")
  puts routine = arm_exercises.sample(6)
  puts "30 minutes on the stairmaster or elliptical"
elsif (answer == 2) && (workout_length == "short")
  puts routine = leg_exercises.sample(4)
elsif (answer == 2) && (workout_length == "long")
  puts routine = leg_exercises.sample(6)
  puts "25 minutes on the spin bike, HIIT"
elsif (answer == 3) && (workout_length == "short")
  puts routine = shoulder_exercises.sample(4)
elsif (answer == 3) && (workout_length == "long")
  puts routine = shoulder_exercises.sample(6)
  puts "30 minutes on the stairmaster or treadmill"
elsif (answer == 4) && (workout_length == "short")
  puts routine = back_exercises.sample(4)
elsif (answer == 4) && (workout_length == "long")
  puts routine = back_exercises.sample(6)
  puts "30 minutes on the stairmaster or treadmill"
else
  p "Something went wrong"
end



