class AddForeignKeysToKeywordListings < ActiveRecord::Migration
  def change
    add_column :keyword_listings, :keyword_id, :integer, default: nil
    add_column :keyword_listings, :listing_id, :integer, default: nil
  end
end
