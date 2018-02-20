class RenameColumnInListings < ActiveRecord::Migration
  def change
    rename_column :listings, :property_subtype_property_type_id, :property_id
  end
end
