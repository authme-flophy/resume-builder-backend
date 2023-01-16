class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create, :index]

  def index
    users = User.all
    render json: users
  end

  def profiler
    # http://localhost:4000/prospects
    user = User.find_by(username: params[:username])
    if user
      render json: user
    else
      render json: { error: "User does not exist" }
    end
  end

  def show
    user = User.find(authenticate_request.id)
    if user
      render json: { user: {
        id: user.id,
        first_name: user.first_name,
        second_name: user.second_name,
        username: user.username,
        email: user.email,
        image_url: user.image.url
      }}
    else
      render json: { errors: "Not authorized" }, status: :unauthorized
    end
  end

  def profile
    user = User.find(authenticate_request.id)
    if user
      render json: user, serializer: ProfileUserSerializer
    else
      render json: { errors: "Not authorized" }, status: :unauthorized
    end
  end
  
  def create
    puts user_params
    user = User.create!(user_params)
    if user.valid?
      token = jwt_encode(user_id: user.id)
      render json: { 
        user: {
          first_name: user.first_name,
          second_name: user.second_name,
          username: user.username,
          email: user.email,
          image_url: user.image.url
        },
        token: token
       }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
  end

  private

  def user_params
    params.permit(:first_name, :second_name, :email, :password, :username, :image)
  end

end
