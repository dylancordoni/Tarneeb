class Deck < ActiveRecord::Base
  has_many :cards

  def initialize()
    suits = ["hearts", "clubs", "diamonds", "spades"]
    numbers = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    suits.each do |suit|
      numbers.each do |number|
        self.cards << Card.new(suit: suit, value: number, deck_id: self.id)
      end
    end
  end

end
