class RemoveRewardRateIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :reward_rate_id, :integer
  end
end
