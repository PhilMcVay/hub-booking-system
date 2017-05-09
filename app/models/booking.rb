class Booking < ApplicationRecord
  belongs_to :area

  after_initialize :default_status

  validates :start_time, :end_time, :no_of_people, presence: true

  validates :start_time, :end_time, overlap: {:exclude_edges => ["start_time", "end_time"], :scope => "area_id"}

  # Sets status to "Pending" before saving the booking request
  def default_status
    self.status ||= "Pending"
  end

end
