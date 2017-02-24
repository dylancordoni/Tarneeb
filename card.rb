class Card
  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def display_card
    "#{@number} of #{@suit}"
  end
end
