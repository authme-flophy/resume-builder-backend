class SessionsController < ApplicationController

    skip_before_action :authenticate_request

    def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
        token = jwt_encode(user_id: user.id)
        render json: { user: user, token: token}
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end
  
  end