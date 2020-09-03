#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe game'
puts

sleep 1

# create validate method to check if valid name is typed

puts 'Player 1 type your name'

@player_1_name = gets.chomp
puts

puts 'Player 2 add your name'

@player_2_name = gets.chomp
puts

puts 'Computer will randomly choose sign for players'
puts '...'
sleep 1

# make module for methods and move generate_random_signs there

def generate_random_signs
  sign1 = %w[x o].sample
  sign2 = sign1 == 'x' ? 'o' : 'x'
  [sign1, sign2]
end

# signs = generate_random_signs
player_1_sign, player_2_sign = generate_random_signs

# create Player class after that initialize two objects and assign them names and signs

puts "#{@player_1_name}(#{player_1_sign}) --vs-- #{@player_2_name}(#{player_2_sign})"
puts
sleep 1

def check_first_player(player_1_sign, player_2_sign)
  first_player = player_1_sign == 'x' ? @player_1_name : @player_2_name
  second_player = player_2_sign == 'o' ? @player_1_name : @player_2_name
  [first_player, second_player]
end

toggler = 0
current_player = check_first_player(player_1_sign, player_2_sign)[toggler]

# board
# board = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

def make_move(_player, num)
  p num
  # replace num inside border with players sign
end

9.times do
  # show board
  puts "#{current_player} your turn,type number from 1 to 9"
  board_number = gets.chomp.to_i
  make_move(current_player, board_number)
  # update_board  create method update board
  # check if there is winner then break loop
  toggler = toggler.zero? ? 1 : 0
end
