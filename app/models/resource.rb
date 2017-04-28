class Resource < ApplicationRecord
  has_many :areas through :area_resources
end
