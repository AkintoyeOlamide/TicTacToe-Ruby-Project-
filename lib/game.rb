require_relative './modules/validation'
require_relative './modules/helper'
require_relative './board'

require 'set'

class Game
  extend Validation
  extend Helper
  include Helper

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @choosed_nums = Set.new
  end

  def self.show_welcome_text
    puts "Welcome to Tic Tac Toe game \n\n "
  end

  def self.ask_player_name(player_number)
    puts "Player #{player_number} type your name"
    validate_name(gets.chomp).capitalize
  end

  def self.choose_signs
    puts 'Computer will randomly choose sign for players, please wait ... '
    show_progress
    puts "\n\n\n "
    generate_random_signs
  end

  def announce_players
    puts "#{@player1.name}(#{@player1.sign}) -- vs -- #{@player2.name}(#{@player2.sign}) \n"
    sleep 2
  end

  def winner?
    board_elements = [@board.squares[0], @board.squares[1], @board.squares[2]].flatten

    winner_name = nil

    @board.wining_combinations.each do |arr|
      winner_name = get_winner_name(arr, board_elements, @player1)
      break if winner_name

      winner_name = get_winner_name(arr, board_elements, @player2)
      break if winner_name
    end

    winner_name = 'Draw' if winner_name.nil? && (@choosed_nums.length == 9)
    winner_name
  end

  def start_new_game
    announce_players
    @board.show_board

    @toggler = 0

    until winner?
      current_player = check_players_order(@player1, @player2)[@toggler]
      num = current_player.make_move(@choosed_nums)
      @board.update_board(num, current_player.sign)
      @toggler = @toggler.zero? ? 1 : 0
    end

    puts winner? == 'Draw' ? 'Draw. try again' : "#{winner?} is winner !!!"
  end
end
