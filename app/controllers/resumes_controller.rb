class ResumesController < ApplicationController
  before_action :authenticate_request
  before_action :set_resume, only: %i[ show update destroy ]

  # GET /resumes
  def index
    @resumes = Resume.all

    render json: @resumes
  end

  # GET /resumes/1
  def show
    render json: @resume
  end

  # POST /resumes
  def create
    user_id = authenticate_request.id
    resume = Resume.create!(
      first_name: params[:first_name],
      second_name: params[:second_name],
      email: params[:email],
      image_url: params[:image_url],
      description: params[:description],
      github: params[:github],
      linkedin: params[:linkedin],
      portfolio: params[:portfolio],
      user_id: user_id
    )
    render json: resume, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: { errors: "did not work" }, status: :unprocessable_entity
  end

  # PATCH/PUT /resumes/1
  def update
    if @resume.update(resume_params)
      render json: @resume
    else
      render json: @resume.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resumes/1
  def destroy
    @resume.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resume_params
      params.permit(:first_name, :second_name, :email, :image_url, :description, :github, :linkedin, :portfolio, :user_id)
    end
end
