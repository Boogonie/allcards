class CreditCard < ActiveRecord::Base
  #has_one :signup_reward
  #has_and_belongs_to_many :categories
  has_many :reward_rates
  has_many :categories, through: :reward_rates


  #accepts_nested_attributes_for :signup_reward
end
