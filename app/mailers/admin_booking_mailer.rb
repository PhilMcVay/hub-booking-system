class AdminBookingMailer < ApplicationMailer

  def admin_booking_email(user)
    @url  = 'http://example.com/login'

	puts user.inspect

    mail(to: user["email"], subject: 'New Booking Request notification')
  end

end


