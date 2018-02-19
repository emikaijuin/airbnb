class CreateSafetyAmenities < ActiveRecord::Migration
  def change
    create_table :safety_amenities do |t|
      t.boolean :fire_extinguisher
      t.boolean :carbon_monoxide_detector
    end
    # add_foreign_key :safety_amenities, :listings
  end
end
