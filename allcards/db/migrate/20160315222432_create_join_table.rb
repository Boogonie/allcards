class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :credit_cards, :signup_rewards do |t|
      # t.index [:credit_card_id, :signup_reward_id]
      # t.index [:signup_reward_id, :credit_card_id]
    end
  end
end
