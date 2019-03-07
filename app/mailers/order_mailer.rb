class OrderMailer < ApplicationMailer
  # default from: 'notifications@example.com'

  

  def mail_order(user)
  	@user = user
    @url = 'https://github.com/jiaad'
    mail(to: @user.email, subject: 'Order recu', delivary_method_options: { version: 'v3.1', api_key: ENV['MAIL_JET_API_PUBLIQUE'], secret_key: ENV['MAIL_JET_API_SECRET'] })
	end
end
