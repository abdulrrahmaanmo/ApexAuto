class AddPickUpLocationToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :pick_up_location, :string
  end
end
