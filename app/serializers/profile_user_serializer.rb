class ProfileUserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :username, :email, :image_url, :resumes, :programming_languages, :positions, :job_experiences, :schools

  def image_url
    object.image.url
  end
end
