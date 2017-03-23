class Deck < ActiveRecord::Base #created every
  has_many :cards
  belongs_to :game

  def initialize() #creates deck
    suits = ["hearts", "clubs", "diamonds", "spades"]
    numbers = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    suits.each do |suit|
      numbers.each do |number|
        self.cards << Card.new(suit: suit, value: number, deck_id: self.id)
      end
    end
  end

  def shuffle #shuffles cards
    self.cards.shuffle!
  end

  def deal #deals cards to players, creating hands
    self.game.players.each do |player|
      i = 0
      hand = Hand.new
      hand.cards = self.cards.slice(i..i+12)
      hand.player = player
      hand.save
      i += 13
    end
  end

end
