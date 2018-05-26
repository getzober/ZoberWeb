class UserMailer < ApplicationMailer
  default from: 'getzober@zober.co'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end

end
