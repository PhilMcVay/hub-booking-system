class RemoveDetailsFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :name, :string
    remove_column :bookings, :company, :string
    remove_column :bookings, :email, :string
    remove_column :bookings, :membership, :string
    remove_column :bookings, :other_notes, :text
    remove_column :bookings, :booking_details_id
  end
end
