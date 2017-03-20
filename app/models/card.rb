class Card < ActiveRecord::Base
  validates :suit, :value, :deck_id, presence: true
  belongs_to :player
  belongs_to :deck
end
