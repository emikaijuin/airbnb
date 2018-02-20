class ChangeDateColumnsInListings < ActiveRecord::Migration
  def change
    remove_column :listings, :dates
    add_column :listings, :dates, :string, array: true, default: []
  end
end
