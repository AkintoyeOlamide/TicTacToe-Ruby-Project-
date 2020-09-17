require './lib/game.rb'
require './lib/player.rb'

RSpec.describe "testing the game methods" do
    let(:player1) { Player.new('Grace', 'x') }
     let(:player2) { Player.new('Olamide', 'o')} 
     let(:game) { Game.new(player1, player2)} 

     it "it chooses sign for players" do
        arr =  Game.choose_signs
        expect(arr.sort).to eq(['x', 'o'].sort)
         
     end
    

     context 'validate the players move' do     
         it "should check the moves between 1 to 9" do
            expect(game.validate_move(6)).to eq(6)   
         end

         it "should check if number is invalid" do
            expect(game.validate_move('p')).to eq(-2)   
         end
      end

      it "it validates player name is greater than 3" do
         expect(Game.validate_name('Grace')).to be(true)
      end

   
     
    
end
