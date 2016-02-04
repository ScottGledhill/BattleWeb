
require 'game'

  describe Game do
    subject(:game) {described_class.new("Sean", "zee")}
    let(:player1) {double :player1}
    let(:player2) {double :player2}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#initialize' do
    it 'assigns a player' do
      expect(game.player1).to eq "Sean"
    end

    it 'assigns player2' do
      expect(game.player2).to eq "zee"
    end
  end
end
