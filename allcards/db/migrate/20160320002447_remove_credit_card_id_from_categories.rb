class RemoveCreditCardIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :credit_card_id, :integer
  end
end
