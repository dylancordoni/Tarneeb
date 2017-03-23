class Player < ActiveRecord::Base #new player gets created with registration
  include BCrypt
  has_many :rounds
  has_many :games, through: :rounds
  has_many :hands
  has_one :last_card, class_name: Card

  #user auth stuff
  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  validate :password_validation

  attr_accessor :input_password

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def password_validation
    if self.input_password.blank?
      @errors.add(:password, "field missing")
    end
  end

  def authenticate(input_password)
    self.password == input_password
  end
  #end user auth stuff

  def currentHand #finds current hand during game
    self.hands.last
  end

  def currentGame
    self.game.last
  end

  def playCard(card) #plays a card and removes it from hand
    if playableCard?(card)
      self.currentHand.delete(card)
      return card
    end
  end


  def playableCard?(card) #checks if a card is playable
    if self.starter
      return true
    else
      self.currentGame.players.each do |player|
        if player.starter
          first_card_played = player.last_card
          if first_card_played.suit == card.suit
            return true
          end
        end
      end
      same_suit_cards = self.currentHand.find {|user_card| user_card.suit == card.suit}
      if same_suit_cards.empty?
        return true
      else
        return false
      end
    end
  end

end
