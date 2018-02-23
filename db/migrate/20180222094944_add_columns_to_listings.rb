class AddColumnsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :guests, :integer
    add_column :listings, :bedrooms, :integer
    add_column :listings, :beds, :integer
    add_column :listings, :bathrooms, :integer
  end
end
