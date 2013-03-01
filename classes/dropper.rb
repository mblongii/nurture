class Dropper
  attr_reader :power
  def initialize(affect, power_range)
    @affect = affect
    @power  = rand(power_range)
  end

  def to_s
    @affect
  end
end
