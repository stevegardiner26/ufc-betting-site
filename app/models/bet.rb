class Bet < ApplicationRecord
  belongs_to :betting_round
  belongs_to :user
end