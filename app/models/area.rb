class Area < ApplicationRecord
  has_many :bookings
  has_many :resources, through: :area_resources
end
