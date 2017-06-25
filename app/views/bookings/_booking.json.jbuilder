#json.extract! booking, :id, :start_time, :end_time, :no_of_people, :resource, :status, :area_id, :created_at, :updated_at
#json.url booking_url(booking, format: :html)

#json.array!(@bookings) do |booking|
  json.extract! booking, :id
  json.title booking.details.first.name
  json.color booking.area.color
  json.start booking.start_time
  json.end booking.end_time
  json.url booking_url(booking, format: :html)
#end
