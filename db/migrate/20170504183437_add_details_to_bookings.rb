class AddDetailsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :name, :string
    add_column :bookings, :company, :string
    add_column :bookings, :email, :string
    add_column :bookings, :membership, :string
    add_column :bookings, :other_notes, :text
  end
end
