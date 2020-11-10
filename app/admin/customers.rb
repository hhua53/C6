ActiveAdmin.register Customer do


  permit_params :name, :number, :email, :notes, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :number, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
