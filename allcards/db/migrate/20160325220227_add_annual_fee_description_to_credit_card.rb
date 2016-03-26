class AddAnnualFeeDescriptionToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :annual_fee_description, :string
  end
end
