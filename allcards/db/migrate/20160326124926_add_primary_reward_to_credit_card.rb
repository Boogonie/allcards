class AddPrimaryRewardToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :primary_reward, :string
  end
end
