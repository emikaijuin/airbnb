class CreatePropertySubtypes < ActiveRecord::Migration
  def change
    create_table :property_subtypes do |t|
      t.string :subtype
    end
  end
end
