class CreatePropertySubtypePropertyTypes < ActiveRecord::Migration
  def change
    create_table :property_subtype_property_types do |t|

      t.timestamps null: false
    end
  end
end
