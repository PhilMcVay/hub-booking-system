class Area < ApplicationRecord
  has_many :bookings
  has_many :resources, through: :area_resources
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name,      presence: true,
                        uniqueness: true

  validates :capacity,  presence: true
end
