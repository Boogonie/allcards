class RemoveSignupBonusFromCreditCard < ActiveRecord::Migration
  def change
    remove_column :credit_cards, :signup_bonus, :integer
  end
end
