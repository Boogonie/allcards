class AddCreditCardIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :credit_card_id, :integer
  end
end
