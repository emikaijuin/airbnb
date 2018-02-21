class ChangeVerificationColumnNameInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :verification, :user_type
  end
end
