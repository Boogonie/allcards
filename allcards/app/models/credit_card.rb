class CreditCard < ActiveRecord::Base
  belongs_to  :signup_reward
  has_many    :reward_rates
  has_many    :categories, through: :reward_rates

  attr_accessor :cash_back

  def self.cbcalc(category_rate = {})
    credit_cards = CreditCard.includes([:categories, :reward_rates])
    credit_cards.all.each do |card|
      category_rate.each do |key, value|
        category_rate.stringify_keys
        reward_rate           = card.reward_rates.find{ |rr| rr.category.name == 'Gas' }
        cash_back_by_category = reward_rate.percent * value.to_i
        results = { card => { :key => cash_back_by_category}}
      end
    end
  end

end
