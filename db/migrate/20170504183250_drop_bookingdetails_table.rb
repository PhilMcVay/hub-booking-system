class DropBookingdetailsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :booking_details
  end
end
