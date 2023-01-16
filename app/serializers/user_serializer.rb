class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :email, :username, :image_url, :resumes, :position, :schools, :job_experiences, :programming_languages

  def image_url
    object.image.url
  end
end
