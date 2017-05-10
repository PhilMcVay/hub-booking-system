class Booking < ApplicationRecord
  belongs_to :area

  after_initialize :default_status

  validates :start_time, :end_time, presence: true,
                                    overlap: {:exclude_edges => ["start_time", "end_time"], :scope => "area_id"}

  validates :no_of_people, presence: true

  # Sets status to "Pending" before saving the booking request
  def default_status
    self.status ||= "Pending"
  end

end
