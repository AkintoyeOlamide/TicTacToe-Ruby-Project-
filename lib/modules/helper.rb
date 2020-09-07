module Helper
  def show_progress
    101.times do |i|
      print("\rPercentage: ", "#{i}%")
      sleep(0.03)
    end
  end

  def generate_random_signs
    sign1 = %w[x o].sample
    sign2 = sign1 == 'x' ? 'o' : 'x'
    [sign1, sign2]
  end

  def check_players_order(player1, player2)
    if player1.sign == 'x'
      first_player = player1
      second_player = player2
    else
      first_player = player2
      second_player = player1
    end

    [first_player, second_player]
  end

  def get_winner_name(combinations, board, player)
    winner_name = player.name if combinations.all? do |num|
      finded_element_from_board = board.find { |el| el.include? :"#{num}" }
      finded_element_from_board[:"#{num}"] == player.sign
    end
    winner_name
  end
end
