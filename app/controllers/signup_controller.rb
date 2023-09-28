class SignupController < ApplicationController
  def create
    user = User.new(user_params)
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end