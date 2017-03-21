class Hand < ActiveRecord::Base #created at the beginning of every round
  belongs_to :player
  has_many :cards
end
