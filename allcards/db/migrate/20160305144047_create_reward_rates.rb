class CreateRewardRates < ActiveRecord::Migration
  def change
    create_table :reward_rates do |t|
      t.integer :percent

      t.timestamps null: false
    end
  end
end
