class Plant
  attr_accessor :name, :health
  def initialize(name)
    @name   = name
    @health = {
      nutrients: 1,
      infestation: 0,
      hydration: 1
    }
  end

  def absorb(affect)
    @health[:"#{affect}"] += affect.power
  end

  def alive?
    @health[:infestation] < 1 &&
      @health[:nutrients] > 0 &&
      @health[:hydration] > 0
  end

  def to_s
    "\n#{@name}'s stats\n
    \tnutrients: #{@health[:nutrients]}\n
    \tinfestation: #{@health[:infestation]}\n
    \thydration: #{@health[:hydration]}
    #{message}"
  end

  private

  def message
    if alive?
      "\nStayin' Alive!\n\n"
    else
      "\nTry again.\n\n"
    end
  end
end
