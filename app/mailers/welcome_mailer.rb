class WelcomeMailer < ActionMailer::Base
  default from: "ramananrpn@gmail.com"

  def send_welcome_email(email)
    @user = User.find_by_email(email)
    mail(:to => email ,
         :subject => 'Welcome !! Thanks for Signing Up' )
  end
end
