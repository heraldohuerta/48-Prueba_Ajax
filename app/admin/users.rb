ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
permit_params :id,:email,:password,:name,:admin, :password_confirmation
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


filter :email
filter :name
filter :created_at


form do |f|
  inputs 'Agregar un nuevo usuario' do
    input :email
    input :password
    input :name
    input :admin
end
   actions
end

index do
    column :id
    column :email
    column :password
    column :name
    column :admin
       actions
end



controller do
  def update
      if (params[:user][:password].blank? && params[:user]
          [:password_confirmation].blank?)
          params[:user].delete("password")
          params[:user].delete("password_confirmation")
        end
        super
      end
end

end
