class Booking < ApplicationRecord
  belongs_to :area
  has_many :details, dependent: :destroy

  after_initialize :default_status

  validates :start_time, :end_time, presence: true,
                                    overlap: {:exclude_edges => ["start_time", "end_time"], :scope => "area_id"}

  validate :end_time_after_start_time

  validates :no_of_people, presence: true

  # Sets status to "Pending" before saving the booking request
  def default_status
    self.status ||= "Pending"
  end

  # Ensures end date/time entered is greater than start date/time
  def end_time_after_start_time
    if start_time > end_time
      errors.add :end_time, "must be after Start time"
    end
  end

end
