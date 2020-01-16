require './game'
RSpec.describe Game do
  describe '#score' do
    it 'it returns 0 for all gutter games' do
      game = Game.new
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end
  end
end
