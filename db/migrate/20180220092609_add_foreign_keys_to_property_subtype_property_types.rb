class AddForeignKeysToPropertySubtypePropertyTypes < ActiveRecord::Migration
  def change
    add_column :property_subtype_property_types, :property_type_id, :integer, default: nil
    add_column :property_subtype_property_types, :property_subtype_id, :integer, default: nil
  end
end
