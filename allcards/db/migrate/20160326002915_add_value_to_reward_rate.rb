class AddValueToRewardRate < ActiveRecord::Migration
  def change
    add_column :reward_rates, :value, :integer
  end
end
