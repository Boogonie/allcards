class AddRewardRateIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :reward_rate_id, :integer
  end
end
