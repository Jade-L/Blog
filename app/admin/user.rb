ActiveAdmin.register User do


  permit_params :username, :email


  index do
    column :username
    column :email
    actions

  end


end
