class ApplicationMailer < ActionMailer::Base
  default from: "everybody@appacademy.io"

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/session/new'
    mail(to: user.username, subject: 'Welcome to 99 Cats')
  end 
  layout 'mailer'
end