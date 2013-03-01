#!/usr/bin/env ruby
require_relative 'classes/Dropper'
require_relative 'classes/Plant'

range = -1..1
# Create Droppers
# Food
food = Dropper.new('nutrients', range)

# Poison
poison = Dropper.new('infestation', range)

# Water
water = Dropper.new('hydration', range)

# Create plants
# Rose
rose = Plant.new("Rose")

# Action!
rose.absorb food
rose.absorb poison
rose.absorb water
puts rose
