class AddIntroBtPeriodToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :intro_bt_period, :string
  end
end
