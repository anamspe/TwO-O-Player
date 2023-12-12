require './game'
require './players'
require './questions'

puts "Welcome to TWO-O-Player!"
puts
puts "Player one will play first, followed by player two."
puts
puts "Make sure to take turns, first question for player 1, second question for player two!"

P1 = Player.new
P2 = Player.new
question = Question.new

game = Game.new(P1, P2, question)
puts "Player 1, " + question.question
print "> "
answer = $stdin.gets.chomp.to_i

if question.validate_answer(answer)
  puts "That's correct!"
  P1.add_point
else
  puts "Uh-oh! Incorrect!"
  P1.lose_life
end

puts
puts "--- Lives ---"
puts "P1: #{P1.lives}/3 vs P2: #{P2.lives}/3"
puts
  

