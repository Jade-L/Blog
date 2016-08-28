class AddDisableToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :disable, :boolean, default: false
  end
end
