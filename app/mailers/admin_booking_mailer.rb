class AdminBookingMailer < ApplicationMailer

  def admin_booking_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'New Booking Request notification')
  end

end


