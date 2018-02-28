class CreateAvatarUploaders < ActiveRecord::Migration
  def change
    create_table :avatar_uploaders do |t|

      t.timestamps null: false
    end
  end
end
