class Player
  def initialize
    @score = 0
    @lives = 3
  end

  def add_point
    @score += 1
  end

  def lose_life
    @lives -= 1
  end

  def is_dead?
    @lives = 0
  end

  protected
  
  def score
    @score
  end
end