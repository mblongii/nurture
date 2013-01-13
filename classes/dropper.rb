class Dropper
  attr_accessor :affects, :volume, :power, :plant
  def initialize(affects, power)
    @plant    = plant
    @affects  = affects
    @volume   = 120 # mL
    @power    = power
  end

  def drop(plant)
    if self.volume > 0
      self.volume -= 20 # 6 drops
      plant.absorb(@affects, @power)
    end
  end
end
