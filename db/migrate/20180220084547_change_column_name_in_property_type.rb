class ChangeColumnNameInPropertyType < ActiveRecord::Migration
  def change
    remove_column :property_types, :type, :string
    add_column :property_types, :property, :string
  end
end
