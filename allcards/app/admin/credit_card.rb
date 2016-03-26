ActiveAdmin.register CreditCard do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :name, :card_art, :issuer, :annual_fee, :standard_reward_rate, :signup_bonus, :details,
:regular_purchase_apr, :intro_purchase_apr, :intro_bt_apr, :credit_needed, :signup_reward_id, :primary_reward, :app_link

end
