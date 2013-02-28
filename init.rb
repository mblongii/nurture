#!/usr/bin/env ruby
Dir[File.dirname(__FILE__) + '/classes/*.rb'].each {|file| require file}

# Create Droppers
# Food
range = -1..0
food = Dropper.new("nutrients", rand(range))

# Poison
range = 0..1
poison = Dropper.new("infestation", rand(range))

# Water
range = -1..0
water = Dropper.new("hydration", rand(range))

# Create plants
# Rose
rose = Plant.new("Rose")

# Action!
food.drop(rose)
poison.drop(rose)
water.drop(rose)
puts rose

if rose.living
  puts "\nStayin' Alive!\n\n"
else
  puts "\nTry again.\n\n"
end
