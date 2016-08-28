ActiveAdmin.register Post do


permit_params :title, :text, :user_id, :disable

  index do
    column :title
    column :text
    column :disable
    actions
  end

end
