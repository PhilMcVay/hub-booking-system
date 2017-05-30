class Detail < ApplicationRecord
  belongs_to :booking

  validates :name, :membership, :email, presence: true

  validates_format_of :email, :with => Devise::email_regexp

end
