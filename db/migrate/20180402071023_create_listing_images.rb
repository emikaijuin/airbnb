class CreateListingImages < ActiveRecord::Migration
  def change
    create_table :listing_images do |t|
      t.integer :listing_id
      t.string :image

      t.timestamps null: false
    end
  end
end
