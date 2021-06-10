class UsersController < ApplicationController
  def create
    render_resource User.create create_params
  end

  private

  def create_params
    params.permit(:email, :password, :password_confirmation)
  end
end
