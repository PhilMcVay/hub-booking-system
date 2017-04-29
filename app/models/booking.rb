class Booking < ApplicationRecord
  belongs_to :area

  after_initialize :default_status

  validates :start_time, :end_time, :no_of_people, presence: true

  def default_status
    self.status ||= "Pending"
  end

end
