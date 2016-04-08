class ChangePercentFormatInRewardRateTable < ActiveRecord::Migration
  def change
    change_column :reward_rates, :percent, :float
  end
end
