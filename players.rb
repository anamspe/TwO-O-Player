class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def add_point
    @score += 1
  end

  def lose_life
    @lives -= 1
  end
end