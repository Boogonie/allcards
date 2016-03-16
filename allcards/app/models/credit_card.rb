class CreditCard < ActiveRecord::Base
  belongs_to :signup_reward
  has_many :reward_rates
  has_many :categories, through: :reward_rates
end
