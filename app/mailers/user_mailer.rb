class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url ='https://github.com/jiaad'
    mail(to: @user.email, subject:'Welcome to My Awesome site')
  end
end
