class AddTimePeriodToRewardRate < ActiveRecord::Migration
  def change
    add_column :reward_rates, :time_period, :integer
  end
end
