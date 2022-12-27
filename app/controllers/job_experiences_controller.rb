class JobExperiencesController < ApplicationController
  before_action :set_job_experience, only: %i[ show update destroy ]

  # GET /job_experiences
  def index
    @job_experiences = JobExperience.all

    render json: @job_experiences
  end

  # GET /job_experiences/1
  def show
    render json: @job_experience
  end

  # POST /job_experiences
  def create
    @job_experience = JobExperience.new(job_experience_params)

    if @job_experience.save
      render json: @job_experience, status: :created, location: @job_experience
    else
      render json: @job_experience.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_experiences/1
  def update
    if @job_experience.update(job_experience_params)
      render json: @job_experience
    else
      render json: @job_experience.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_experiences/1
  def destroy
    @job_experience.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_experience
      @job_experience = JobExperience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_experience_params
      params.require(:job_experience).permit(:title, :company_name, :start_year, :end_year, :resume_id, :user_id)
    end
end
