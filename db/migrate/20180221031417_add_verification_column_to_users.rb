class AddVerificationColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :verification, :boolean
  end
end
