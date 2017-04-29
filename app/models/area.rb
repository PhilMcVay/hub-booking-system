class Area < ApplicationRecord
  has_many :bookings
  has_many :resources, through: :area_resources

  validates :name,      presence: true,
                        uniqueness: true

  validates :capacity,  presence: true
end
