ActiveAdmin.register Ticket do
  permit_params :first_name, :last_name, :email_address, :credit_card_number, :credit_card_expiration_date, :show_id

  filter :shows


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


end
