class DropCreditCardsSignupRewards < ActiveRecord::Migration
  def change
    drop_table :credit_cards_signup_rewards
  end
end
