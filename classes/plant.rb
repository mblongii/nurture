class Plant
  attr_accessor :name, :height, :health
  def initialize(name)
    @name   = name
    @height = 0
    @health = {
      nutrients: 1,
      infestation: 0,
      hydration: 1
    }
  end

  def absorb(affects, power)
    @health[:"#{affects}"] += power
  end

  def alive?
    @health[:infestation] <= 0 &&
      @health[:nutrients] >= 1 &&
      @health[:hydration] >= 1
  end

  def to_s
    "\n#{@name}'s stats\n
    \tnutrients: #{@health[:infestation]}\n
    \tinfestation: #{@health[:nutrients]}\n
    \thydration: #{@health[:hydration]}"
  end
end
