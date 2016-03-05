class RemoveSignupRewardIdFromCreditCards < ActiveRecord::Migration
  def change
    remove_column :credit_cards, :signup_reward_id, :integer
  end
end
