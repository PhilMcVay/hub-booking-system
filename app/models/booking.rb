class Booking < ApplicationRecord
  belongs_to :area
  belongs_to :booking_detail
end
