ActiveAdmin.register User do
  permit_params [:email, :password, :password_confirmation, :nick_name,:profile_picture] 

  form do |f|
      f.inputs "User" do
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :nick_name
        f.input :profile_picture
      end
      f.actions
    end
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  
  
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :nick_name, :profile_picture, :admin]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
