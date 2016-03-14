class AddCategoryToRewardRates < ActiveRecord::Migration
  def change
    add_reference :reward_rates, :category, index: true, foreign_key: true
  end
end
