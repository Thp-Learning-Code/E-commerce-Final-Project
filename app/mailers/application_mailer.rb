# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'corsairethp@gmail.com'
  layout 'mailer'
end
