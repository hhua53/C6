ActiveAdmin.register Customer do


  permit_params :name, :number, :email, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :number, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
