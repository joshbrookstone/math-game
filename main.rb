require './Players.rb'
require './Game.rb'
require './Questions.rb'


puts "Welcome to the math game!"
puts "Before we start, what are your names?"
print "> "

player1 = Player.new($stdin.gets.chomp)

puts "Hello #{player1.name}"
print "> "

player2 = Player.new($stdin.gets.chomp)

puts "Hello #{player2.name}"
print "> "

game = Game.new(player1,player2)

game.start_game


