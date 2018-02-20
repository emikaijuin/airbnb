class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :property_subtype_property_types, :properties
  end
end
