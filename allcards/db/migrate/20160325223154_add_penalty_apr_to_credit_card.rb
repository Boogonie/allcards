class AddPenaltyAprToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :penalty_apr, :string
  end
end
