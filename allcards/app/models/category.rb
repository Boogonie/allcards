class Category < ActiveRecord::Base
  has_many :reward_rates
  has_many :credit_cards, through: :reward_rates
end
