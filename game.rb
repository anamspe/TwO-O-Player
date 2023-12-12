class Game
  attr_reader :players

  def initialize(player1, player2, question)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @question = question
  end

  def game_loop
    @players.rotate!
  end

  def end_game?
    if @players.include?(is_dead?)
      "Game Over!"
      if @player1.is_dead?
        puts "Player 2 wins with a score of #{@player2.score}"
      else
        puts "Player 1 wins with a score of #{@player1.score}"
      end
    else
      game_loop
    end
  end

end