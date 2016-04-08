class CreditCard < ActiveRecord::Base
  belongs_to  :signup_reward
  has_many    :reward_rates
  has_many    :categories, through: :reward_rates

  def reward_rate_by_category(category)
    reward_rate = self.reward_rates.find{ |rr| rr.category.name == category }
    return reward_rate.percent
  end

  def monthly_reward_by_category(category, spending)
    reward_rate = self.reward_rate_by_category(category)
    return spending * reward_rate
  end

end
