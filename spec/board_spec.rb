require_relative '../lib/board.rb'


describe "Board methods" do
    output = "+------------------------+\n"
   



    9.times do |key|
        output += '|' if (key + 1) == 1  || (key + 1) == 4 || key + 1 == 7
        output += " #{key + 1} - \u{2754} "
        output += "| \n" if (key + 1) % 3 == 0
    end
end
 output = "+------------------------+"

 describe "update board" do
 

   update_board_X = "+------------------------+\n"
    9.times do |key|
        update_board_X += '|' if  (key + 1 == 1) || (key + 1 == 4) || key + 1 == 7
        update_board_X += (key + 1) == 5 ? "#{key + 1} - \u{274C} " : "#{key + 1} - \u{2754} "
       update_board_X += "| \n" (key + 1) % 3 == 0
    end

    update_board_X = "+------------------------+\n"
    9.times do |key|
        update_board_O += '|' if  (key + 1 == 1) || (key + 1 == 4) || key + 1 == 7
        update_board_O += (key + 1) == 5 ? "#{key + 1} - \u{2B55} " : "#{key + 1} - \u{2754} "
       update_board_O += "| \n" (key + 1) % 3 == 0
    end
    update_board_O = "+------------------------+\n"
    it 'should print empty board' do
        expect(Board.new.show_board).to eq(output)
      end
    
      it 'should print x for 5 th position if sign is x' do
        expect(Board.new.update_board(5, 'x')).to eq(update_board_x)
      end
    
      it 'should print o for 5 th position if sign is o' do
        expect(Board.new.update_board(5, 'o')).to eq(update_board_o)
      end
end
    