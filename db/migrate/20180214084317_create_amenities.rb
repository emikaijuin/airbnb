class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.boolean :wifi
      t.boolean :shampoo
      t.boolean :breakfast
    end
    # add_foreign_key :amenities, :listings
  end
end
