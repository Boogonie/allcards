class RemoveStandardRewardRateFromCreditCard < ActiveRecord::Migration
  def change
    remove_column :credit_cards, :standard_reward_rate, :integer
  end
end
