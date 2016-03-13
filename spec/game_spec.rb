
require 'game'

  describe Game do

  let(:player1) {double :player1}
  let(:player2) {double :player2}

  before do
    allow(player1).to receive(:name).and_return("Bob")
    allow(player2).to receive(:name).and_return("Bill")
    allow(player1).to receive(:receive_damage)
    allow(player2).to receive(:receive_damage)
  end

  subject(:game) {described_class.new(player1, player2)}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#initialize' do

    it 'assigns a player' do
      expect(game.player1).to eq player1
    end

    it 'assigns player2' do
      expect(game.player2).to eq player2
    end

    it 'sets the current turn' do
      expect(game.current_turn).to eq "Bob"
    end

  end

  describe '#current_turn' do

    it 'initializes with current_turn' do
      expect(game.current_turn).to eq "Bob"
    end

    it 'returns the other player after switching turns' do
      game.switch_turn
      expect(game.current_turn).to eq "Bill"
    end

  end

  describe '#switch_turn' do

    it 'switches turns between players' do
      game.switch_turn
      expect(game.current_turn).to eq "Bill"
    end

  end

end
