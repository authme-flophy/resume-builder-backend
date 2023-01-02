class ProgrammingLanguagesController < ApplicationController
  before_action :set_programming_language, only: %i[ show update destroy ]
  
  def index
    programming_languages = ProgrammingLanguage.all
    render json: programming_languages
  end

  def show
    render json: programming_language
  end

  def create
    @programming_language = ProgrammingLanguage.new(programming_language_params)

    if @programming_language.save
      render json: @programming_language, status: :created
    else
      render json: @programming_language.errors, status: :unprocessable_entity
    end
  end

  def update
    if @programming_language.update(programming_language_params)
      render json: @programming_language
    else
      render json: @programming_language.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @programming_language.destroy
  end

  private

  def set_programming_language
    @programming_language = ProgrammingLanguage.find(params[:id])
  end

  def programming_language_params
    params.permit(:language_name, :resume_id)
  end

end
