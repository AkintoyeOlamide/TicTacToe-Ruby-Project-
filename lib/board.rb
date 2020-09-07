class Board
  attr_reader :squares, :wining_combinations

  def initialize
    @squares = [
      [{ '1': nil }, { '2': nil }, { '3': nil }],
      [{ '4': nil }, { '5': nil }, { '6': nil }],
      [{ '7': nil }, { '8': nil }, { '9': nil }]
    ]

    @wining_combinations = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9],
      [1, 4, 7], [2, 5, 8], [3, 6, 9],
      [1, 5, 9], [3, 5, 7]
    ]
  end

  def show_board
    puts '+---------------------------+'

    @squares.each do |arr|
      print '|'
      arr.each do |el|
        el.each do |key, value|
          if value
            print " #{key} - #{value == 'x' ? "\u{274C}" : "\u2B55"}  "
          else
            print " #{key} - \u{2754}  "
          end
        end
      end
      print '|'
      puts
    end

    puts '+---------------------------+'
  end

  # getting number and sign to update the board
  def update_board(num, sign)
    @squares = @squares.map do |row|
      row.each do |item|
        item.each do |key, _value|
          item[key] = sign if key == :"#{num}"
        end
      end
    end

    puts
    puts
    show_board
    puts
    puts
  end
end
