class UsersController < ApplicationController
  def create
    user = User.create create_params
    render_resource user
    UserMailer.welcome_email(user).deliver_now
  end

  private

  def create_params
    params.permit(:email, :password, :password_confirmation)
  end
end
