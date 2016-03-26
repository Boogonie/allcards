class AddLatePaymentFeeToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :late_payment_fee, :string
  end
end
