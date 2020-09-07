#!/usr/bin/env ruby

require_relative('../lib/player')
require_relative('../lib/game')


Game.show_welcome_text

# inialize player names
player_1_name = Game.ask_player_name(1)
puts
player_2_name = Game.ask_player_name(2)
puts

# initialize signs

signs = Game.choose_signs
player_1_sign, player_2_sign = signs

# create player objects
player1 = Player.new(player_1_name, player_1_sign)
player2 = Player.new(player_2_name, player_2_sign)

p player1

# starting new game with player1 and player2

tic_tac_toe = Game.new(player1, player2)

tic_tac_toe.start_new_game