class AddRewardTypeAndValueToSignupReward < ActiveRecord::Migration
  def change
    add_column :signup_rewards, :reward_type, :string
    add_column :signup_rewards, :value, :integer
  end
end
