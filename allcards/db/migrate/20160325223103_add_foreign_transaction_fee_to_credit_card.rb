class AddForeignTransactionFeeToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :foreign_transaction_fee, :string
  end
end
