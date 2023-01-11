class UsersController < ApplicationController

  skip_before_action :authenticate_request, only: %i[ create ]

  def index
    users = User.all
    render json: users
  end

  def show
    user = set_user
    render json: user
  end

  def create
    user = User.create!(user_params)
    if user
      token = jwt_encode(user_id: user.id)
      render json: {user: user, token: token}, status: :created
    else
      render json: {errors: "Incorrect Details"}, status: :unprocessable_entity
    end
  end

  def update
    user = set_user
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user = set_user
    user.destroy
  end

  private

  def set_user
    user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :second_name, :email, :password, :username)
  end

end
