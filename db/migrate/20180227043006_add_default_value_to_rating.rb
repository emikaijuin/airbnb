class AddDefaultValueToRating < ActiveRecord::Migration
  def change
    change_column :listings, :rating, :integer, :default => 0
  end
end
