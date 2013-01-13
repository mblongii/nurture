#!/usr/bin/env ruby
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/classes")
Dir.glob("#{File.dirname(__FILE__)}/classes/*.rb") { |classes| require File.basename(classes, '.*') }

# Create Droppers
# Food
range = 0..5
food = Dropper.new("nutrients", rand(range))

# Poison
range = -10..-5
poison = Dropper.new("infestation", rand(range))

# Water
range = 0..1
water = Dropper.new("hydration", rand(range))

# Create plants
# Rose
rose = Plant.new("Rose")

# Action!
puts "\n#{rose.name}" + "'s stats"
food.drop(rose)
poison.drop(rose)
water.drop(rose)

if rose.living
  puts "\nStayin' Alive!\n\n"
else
  puts "\nTry again.\n\n"
end
