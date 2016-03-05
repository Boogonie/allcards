class CreditCard < ActiveRecord::Base
  belongs_to :signup_reward
  has_many :categories
  has_many :reward_rates, through: :categories
end
