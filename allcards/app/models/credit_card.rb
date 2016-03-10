class CreditCard < ActiveRecord::Base
  has_one :signup_reward
  has_many :categories
  has_many :reward_rates, through: :categories

  accepts_nested_attributes_for :signup_reward
end
