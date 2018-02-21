class AddDefaultToUserType < ActiveRecord::Migration
  def change
    remove_column :users, :user_type, :boolean
    add_column :users, :role, :integer, default: 0
  end
end
