class Card < ActiveRecord::Base #52 created when a deck is created
  #assigned values once
  validates :suit, :value, :deck_id, presence: true
  belongs_to :deck

  #assigned many times
  belongs_to :player #check player model for last_card
  belongs_to :hand
end
