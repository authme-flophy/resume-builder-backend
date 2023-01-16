require "test_helper"

class ResumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get resumes_url, as: :json
    assert_response :success
  end

  test "should create resume" do
    assert_difference("Resume.count") do
      post resumes_url, params: { resume: { email: @resume.email, first_name: @resume.first_name, image_url: @resume.image_url, second_name: @resume.second_name, user_id: @resume.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show resume" do
    get resume_url(@resume), as: :json
    assert_response :success
  end

  test "should update resume" do
    patch resume_url(@resume), params: { resume: { email: @resume.email, first_name: @resume.first_name, image_url: @resume.image_url, second_name: @resume.second_name, user_id: @resume.user_id } }, as: :json

    assert_response :success
  end

  test "should destroy resume" do
    assert_difference("Resume.count", -1) do
      delete resume_url(@resume), as: :json
    end

    assert_response :no_content
  end
end
