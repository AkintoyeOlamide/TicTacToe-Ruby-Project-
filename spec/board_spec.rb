require_relative '../lib/board.rb'

describe "Board methods" do
    output = "+------------------------+\n"




    9.times do |key|
        output += '|' if (key + 1) == 1  || (key + 1) == 4 || key + 1 == 7
        output += " #{key + 1} - \u{2754} "
        output += "| \n" if (num + 1) % 3 == 0
    end
end