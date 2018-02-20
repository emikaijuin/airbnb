class UpdateColumnsInListings < ActiveRecord::Migration
  def change
    remove_column :listings, :property_type_id
    remove_column :listings, :property_subtype_id
    add_reference :listings, :property_subtype_property_type, foreign_key: true
  end
end
