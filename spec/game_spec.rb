require '../lib/game'
require '../lib/player'

RSpec.describe 'Game methods' do
  let(:player1) { Player.new('Lamia', 'x') }
  let(:player2) { Player.new('Mike', 'o') }
  let(:game) { Game.new(player1, player2) }

  it 'validate the module_method' do
      expect(Game.choose_signs.sort).to eql(%w[x o].sort)
  end

  context 'Validate the moves' do
    it 'check for the numbers' do
      expect(game.validate_move(3)).to eql(3)
    end
    it 'check for the strings' do
      # p game.validate_move('abc')
      expect(game.validate_move('abc')).to eql(-2)
    end

    it 'will be unique numbers' do
      game.choosed_nums = [5]
      expect(game.validate_move(5)).to eql(-1)
    end
  end

  it 'Validate the length of names' do
    expect(Game.validate_name('Lamia')).to be true
  end

  it 'should return array of players' do
    expect(game.getcurrent_player).to eql([player1,player2])
  end
end
