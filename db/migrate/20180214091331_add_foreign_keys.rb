class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :listings, :user, foreign_key: true
    add_reference :listings, :property_type, foreign_key: true
    add_reference :listings, :property_subtype, foreign_key: true    
    add_reference :amenities, :listing, foreign_key: true
    add_reference :safety_amenities, :listing, foreign_key: true
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :listing, foreign_key: true
  end
end
