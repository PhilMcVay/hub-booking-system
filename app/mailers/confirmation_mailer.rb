class ConfirmationMailer < ApplicationMailer

  default from: 'info@digital.je'

  def confirmation_email(detail)
    @url  = 'http://example.com/login'
    mail(to: detail["email"], subject: 'Your booking request at the Hub has just been approved')
  end

end
