class AddColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :schedule, :text
  end
end
