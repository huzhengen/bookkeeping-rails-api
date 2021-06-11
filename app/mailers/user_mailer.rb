class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = 'https://rails.com'
    mail(to: @user.email, subject: 'Welcome to rails')
  end
end
