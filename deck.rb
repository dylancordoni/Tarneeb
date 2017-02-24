require_relative 'card'

class Deck
  def initialize

    @cards = create_cards

  end

  def create_cards
    cards = []
    suits = ["hearts", "clubs", "diamonds", "spades"]
    numbers = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
    suits.each do |suit|
      numbers.each do |number|
        cards << Card.new(suit, number)
      end
    end
    cards
  end

  def display_deck
    output = ""
    @cards.each do |card|
      output += "/" + card.display_card + "/ "
    end
    output
  end

  def shuffle
    @cards.shuffle!
  end
end

deck = Deck.new
deck.shuffle
p deck.display_deck
