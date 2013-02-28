class Dropper
  attr_accessor :affects, :volume, :power, :plant
  def initialize(affects, power)
    @plant    = plant
    @affects  = affects
    @volume   = 120 # mL
    @power    = power
  end

  def drop(plant)
    if @volume > 0
      @volume -= 20 # 6 drops
      plant.absorb(@affects, @power)
    end
  end
end
