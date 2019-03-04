class UserMailer < ApplicationMailer
  # default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url ='https://github.com/jiaad'
    mail(to: @user.email, subject:'Welcome to My Awesome')
  end
end
