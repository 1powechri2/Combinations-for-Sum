require './lib/dice_roll'

puts 'how many dice shall I roll?'
x = gets.chomp.to_i
puts 'how many sides should the dice have?'
y = gets.chomp.to_i
puts 'what sum would you like to see all possible rolls for?'
z = gets.chomp.to_i

awesome = DiceRoll.new(x, y, z)
p awesome.answers
