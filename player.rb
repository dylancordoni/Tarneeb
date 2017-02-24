class Player

  attr_reader :player_number, :dealer

  def initialize(number)
    @player_number = number
    @hand = []
    @dealer = false
  end

end
