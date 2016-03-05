class Category < ActiveRecord::Base
  belongs_to :credit_card
  belongs_to :reward_rate
end
