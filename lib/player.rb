
class Player

  POINTS = 100

  attr_reader :name, :points

  def initialize(name, points = POINTS)
    @name = name
    @points = POINTS
  end

  def receive_damage
    @points -= 10
  end

  def lost?
    @points <= 0
  end
end
