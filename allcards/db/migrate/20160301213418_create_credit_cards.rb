class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.string :card_art
      t.string :issuer
      t.integer :annual_fee
      t.integer :standard_reward_rate
      t.integer :signup_bonus
      t.text :details
      t.string :regular_purchase_apr
      t.string :intro_purchase_apr
      t.string :intro_bt_apr
      t.string :credit_needed

      t.timestamps null: false
    end
  end
end
