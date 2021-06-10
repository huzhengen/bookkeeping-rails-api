class UsersController < ApplicationController
  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    if user.save
      render json: user, status: 200
    else
      render json: user.errors, status: 400
    end
  end
end
