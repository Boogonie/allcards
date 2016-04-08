class AddCreditCardToRewardRates < ActiveRecord::Migration
  def change
    add_reference :reward_rates, :credit_card, index: true, foreign_key: true
  end
end
