class BookingMailer < ApplicationMailer

  default from: 'notifications@example.com'
 
  def booking_email(detail)
    @detail = detail
    @url  = 'http://example.com/login'
    mail(to: @detail.email, subject: 'Confirmation of your Booking Request')
  end
end
