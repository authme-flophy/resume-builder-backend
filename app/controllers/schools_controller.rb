class SchoolsController < ApplicationController
  before_action :authenticate_request
  before_action :set_school, only: %i[ show update destroy ]

  # GET /schools
  def index
    @schools = School.all

    render json: @schools
  end

  # GET /schools/1
  def show
    render json: @school
  end

  # POST /schools
  def create
    user_id = authenticate_request.id
    school = School.create!(
      name: params[:name],
      course_name: params[:course_name],
      start_year: params[:start_year],
      end_year: params[:end_year],
      resume_id: params[:resume_id],
      user_id: user_id
    )
    render json: school, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: { errors: "did not work" }, status: :unprocessable_entity
  end

  # PATCH/PUT /schools/1
  def update
    if @school.update(school_params)
      render json: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_params
      params.permit(:course_name, :name, :start_year, :end_year, :resume_id, :user_id)
    end
end
