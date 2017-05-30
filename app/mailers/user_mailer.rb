class UserMailer < ApplicationMailer
  default from: 'srinavya.kethineni@doj.ca.gov'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'welcome to sample todo app')
  end
end
