require './lib/game.rb'
require './lib/player.rb'

RSpec.describe "testing the game methods" do
    let(:player1) { Player.new('Grace', 'x') }
     let(:player2) { Player.new('Olamide', 'o')} 
     let(:game) { Game.new(player1, player2)} 

    #  it "it chooses sign for players" do
    #     arr =  Game.choose_signs
    #     expect(arr.sort).to eq(['x', 'o'].sort)
         
    #  end

    #  context 'validate the players move' do     
    #  it "it should check the moves between 1 to 9" do
    #     expect(game.validate_move(6)).to eq(6)
         
    #  end
    # end

     it 'get the current player' do
        name = "grace"
        expect(name.getcurrent_player).to eq('grace')
     end

    
     
    
end
