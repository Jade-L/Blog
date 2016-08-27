ActiveAdmin.register Post do


permit_params :title, :text, :user_id

  index do
    column :title
    column :text
    actions
  end

end
