class Player < ActiveRecord::Base
  has_many :rounds
  has_many :games, through: :rounds
  has_many :hands

  def currentHand()
    self.hands.last
  end

  def playCard(card)
    self.
  end

end
