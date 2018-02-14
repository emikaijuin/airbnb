class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :text
    end
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :listings
  end
end
