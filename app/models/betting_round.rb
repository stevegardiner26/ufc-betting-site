class BettingRound < ApplicationRecord
  belongs_to :room
  has_many :bets
end