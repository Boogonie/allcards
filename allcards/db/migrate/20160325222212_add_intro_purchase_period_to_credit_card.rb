class AddIntroPurchasePeriodToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :intro_purchase_period, :string
  end
end
