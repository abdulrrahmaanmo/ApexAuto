class AddReturnLocationToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :return_location, :string
  end
end
