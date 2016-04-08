class AddValueTravelToSignupReward < ActiveRecord::Migration
  def change
    add_column :signup_rewards, :value_travel, :integer
  end
end
