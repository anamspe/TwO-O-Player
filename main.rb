require './game'
require './players'
require './questions'

puts "Welcome to TWO-O-Player!"
puts
puts "Player 1 will play first, followed by Player 2."
puts
puts "Make sure to take turns, first question for Player 1, second question for Player 2!"
puts

P1 = Player.new("Player 1")
P2 = Player.new("Player 2")

game = Game.new(P1, P2)

game.game_loop