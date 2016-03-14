class RewardRate < ActiveRecord::Base
  belongs_to :category
  belongs_to :credit_card
end
