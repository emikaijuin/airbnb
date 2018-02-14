class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
    end
    add_foreign_key :listings, :users
    add_foreign_key :listings, :property_types
    add_foreign_key :listings, :property_subtypes
  end
end
