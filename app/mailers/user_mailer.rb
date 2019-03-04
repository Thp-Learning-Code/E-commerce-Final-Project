class UserMailer < ApplicationMailer
  # default from: 'notifications@example.com'

  def welcome_email(user)
  
    @user = user
    @url ='https://github.com/jiaad'
    mail(to: @user.email, subject:'Welcome to My Site', delivary_method_options:{version: 'v3.1', api_key: ENV['MAIL_JET_API_PUBLIQUE'], secret_key:ENV['MAIL_JET_API_SECRET']})
  end
end
