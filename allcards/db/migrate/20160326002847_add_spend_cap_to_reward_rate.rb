class AddSpendCapToRewardRate < ActiveRecord::Migration
  def change
    add_column :reward_rates, :spend_cap, :integer
  end
end
