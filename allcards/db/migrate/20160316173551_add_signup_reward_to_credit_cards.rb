class AddSignupRewardToCreditCards < ActiveRecord::Migration
  def change
    add_reference :credit_cards, :signup_reward, index: true, foreign_key: true
  end
end
