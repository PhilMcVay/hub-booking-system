class AddDetailsIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :detail, foreign_key: true
  end
end
