class PositionsController < ApplicationController
  before_action :authenticate_request
  before_action :set_position, only: %i[ show update destroy ]

  # GET /positions
  def index
    @positions = Position.all

    render json: @positions
  end

  # GET /positions/1
  def show
    render json: @position
  end

  # POST /positions
  def create
    position = Position.create!(
      name: params[:name],
      user_id: params[:user_id]
    )    
    render json: position, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  # PATCH/PUT /positions/1
  def update
    if @position.update(position_params)
      render json: @position
    else
      render json: @position.errors, status: :unprocessable_entity
    end
  end

  # DELETE /positions/1
  def destroy
    @position.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_params
      params.permit(:name, :user_id)
    end
end
