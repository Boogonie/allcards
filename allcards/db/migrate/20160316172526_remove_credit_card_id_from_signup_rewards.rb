class RemoveCreditCardIdFromSignupRewards < ActiveRecord::Migration
  def change
    remove_column :signup_rewards, :credit_card_id, :integer
  end
end
