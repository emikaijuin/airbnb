class AddDatesColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :dates, :date
  end
end
