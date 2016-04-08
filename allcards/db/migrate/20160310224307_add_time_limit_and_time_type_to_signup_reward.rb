class AddTimeLimitAndTimeTypeToSignupReward < ActiveRecord::Migration
  def change
    add_column :signup_rewards, :time_limit, :integer
    add_column :signup_rewards, :time_type, :string
  end
end
