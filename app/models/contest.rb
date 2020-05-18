class Contest < ApplicationRecord
  has_many :bets
  has_many :users
end
