json.extract! booking, :id, :start_time, :end_time, :no_of_people, :resource, :status, :area_id, :booking_detail_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
