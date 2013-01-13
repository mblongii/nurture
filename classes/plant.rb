class Plant
  attr_accessor :name, :height, :health
  def initialize(name)
    @name   = name
    @height = 0
    @health = {
      nutrients: 0,
      infestation: 10,
      hydration: 0
    }
  end

  def absorb(affects, power)
    puts "#{affects}: #{ self.health[:"#{affects}"] += power} \n"
  end

  def living
    if self.health[:infestation] <= 0 && 
      self.health[:nutrients] >= 1 && 
      self.health[:hydration] >= 1
      return true
    else
      return false
    end
  end
end
