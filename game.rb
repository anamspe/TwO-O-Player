class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  def game_loop
    while (player1.lives > 0) && (player2.lives > 0)
      turn(@player1) 
      break if player1.lives == 0

      turn(@player2)
    end
    announce_winner
  end


  def turn(player)
    question = Question.new
    puts "#{player.name}'s turn!"
    puts "#{player.name}, " + question.ask_question
    puts "> "
    answer = gets.chomp.to_i
    if question.validate_answer(answer)
      puts "That's correct!"
      player.add_point
    else
      puts "Uh-oh! Incorrect!"
      player.lose_life
    end
    display_lives
  end

  def display_lives
    puts
    puts "--- Lives ---"
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts
  end

  def announce_winner
    puts "----- GAME OVER! -----"
    if player1.lives == 0
      puts "#{player2.name} wins with a score of #{player2.score}"
    elsif player2.lives === 0
      puts "#{player1.name} wins with a score of #{player1.score}"
    end
    puts "Good bye!"
  end
    
end