class Round < ActiveRecord::Base
  belongs_to :game
  has_many :players, through: :game
  has_a :deck, through: :game
end
