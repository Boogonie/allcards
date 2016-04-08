class AddIntroBtFeeToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :intro_bt_fee, :string
  end
end
