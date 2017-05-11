class RemoveIdFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :detail_id_id
  end
end
