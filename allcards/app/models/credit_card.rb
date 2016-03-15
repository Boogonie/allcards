class CreditCard < ActiveRecord::Base
  has_and_belongs_to_many :signup_rewards
  has_many :reward_rates
  has_many :categories, through: :reward_rates
end
