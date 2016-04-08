class CreateSignupRewards < ActiveRecord::Migration
  def change
    create_table :signup_rewards do |t|
      t.integer :amount
      t.integer :spend_requirement

      t.timestamps null: false
    end
  end
end
