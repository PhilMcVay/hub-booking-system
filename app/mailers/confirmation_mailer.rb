class ConfirmationMailer < ApplicationMailer

  default from: 'receptionisthub@gmail.com'
 
  def confirmation_email(detail)
    @detail = detail
    @url  = 'http://example.com/login'
    mail(to: @detail.email, subject: 'Your booking request at the Hub has just been approved')
  end

end
