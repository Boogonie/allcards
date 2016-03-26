class AddCashAdvanceFeeToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :cash_advance_fee, :string
  end
end
