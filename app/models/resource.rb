class Resource < ApplicationRecord
  has_many :areas, through: :area_resources

  validates :item,  presence: true,
                    uniqueness: true
end
