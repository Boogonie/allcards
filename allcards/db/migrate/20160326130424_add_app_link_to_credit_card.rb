class AddAppLinkToCreditCard < ActiveRecord::Migration
  def change
    add_column :credit_cards, :app_link, :string
  end
end
