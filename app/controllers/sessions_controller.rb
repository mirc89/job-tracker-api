class SessionsController < ApplicationController
  skip_before_action :authenticate!
  def create
    user = User.authenticate(user_params)
    if user
      data = {
        token: user.authentication_token,
        email: user.email
      }
      render json: data, status: 201
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :attachment, :password, :password_confirmation)
  end

end
