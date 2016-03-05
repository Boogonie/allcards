class AddSignupRewardIdToCreditCards < ActiveRecord::Migration
  def change
    add_column :credit_cards, :signup_reward_id, :integer
  end
end
