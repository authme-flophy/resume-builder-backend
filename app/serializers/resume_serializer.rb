class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :email, :image_url, :user_id, :schools, :job_experiences, :programming_languages
end
