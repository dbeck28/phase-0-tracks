=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!$!" + " :D"
  end
end

p Shout.yelling_happily("I saw a bird")
p Shout.yell_angrily("I dislike birds")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!$!" + " :D"
  end
end

class Singer
  include Shout
end

class Coach
  include Shout
end

beyonce = Singer.new
p beyonce.yelling_happily("I don't think you ready for this jelly!")

phil = Coach.new
p phil.yell_angrily("Guard Him")