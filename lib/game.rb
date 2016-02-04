
class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1.name
  end

  def attack(player)
    player.receive_damage
  end

  def current_turn
    @current_turn
  end

  def switch_turn
    if @current_turn == player1.name
      @current_turn = player2.name
    else
      @current_turn = player1.name
    end
  end

end
