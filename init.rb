#!/usr/bin/env ruby
Dir[File.dirname(__FILE__) + '/classes/*.rb'].each {|file| require file}

range = -1..1
# Create Droppers
# Food
food = Dropper.new("nutrients", range)

# Poison
poison = Dropper.new("infestation", range)

# Water
water = Dropper.new("hydration", range)

# Create plants
# Rose
rose = Plant.new("Rose")

# Action!
rose.absorb food
rose.absorb poison
rose.absorb water
puts rose

if rose.alive?
  puts "\nStayin' Alive!\n\n"
else
  puts "\nTry again.\n\n"
end
