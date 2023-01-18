class SessionsController < ApplicationController
  before_action :authenticate_request, except: :create

  # POST /auth/login
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      token = jwt_encode(user_id: user.id)
      render json: { 
        user: {
          id: user.id,
          first_name: user.first_name,
          second_name: user.second_name,
          username: user.username,
          email: user.email,
          image_url: user.image.url
        },
        token: token
       }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
  
  end