class RewardRate < ActiveRecord::Base
  has_many :categories
  has_many :credit_cards, through :categories
end
