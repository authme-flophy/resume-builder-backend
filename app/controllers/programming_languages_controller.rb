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
    user_languages = params["languages"].split(",")
    user_languages.each do |language|
      ProgrammingLanguage.create!(language_name: language, resume_id: params[:resume_id])
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

end
