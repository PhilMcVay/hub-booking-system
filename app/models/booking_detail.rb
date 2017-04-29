class BookingDetail < ApplicationRecord
  belongs_to :booking

  validates :name, :email, :membership, presence: true
  
end
