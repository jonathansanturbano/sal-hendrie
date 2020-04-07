ActiveAdmin.register Homephoto do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :photo

  index do
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Photo" do
      f.input :photo, as: :file
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = []
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
