class AddRatingToListings < ActiveRecord::Migration
  def change
    add_column :listings, :rating, :integer
  end
end
