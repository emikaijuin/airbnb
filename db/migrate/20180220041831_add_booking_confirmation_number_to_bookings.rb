class AddBookingConfirmationNumberToBookings < ActiveRecord::Migration
  def change
    add_column :acts_as_bookable_bookings, :confirmation_number, :string
  end
end
