class AddCreditCardIdToSignupRewards < ActiveRecord::Migration
  def change
    add_column :signup_rewards, :credit_card_id, :integer
  end
end
