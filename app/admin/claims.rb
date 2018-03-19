ActiveAdmin.register Claim do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :id,:comment, :user_id,:company_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


  index do
      column :id
      column :comment
      column :email_claim do |claim|
        claim.user.email
      end
      column :company do |claim|
        claim.company.name
      end
      actions
  end

end
