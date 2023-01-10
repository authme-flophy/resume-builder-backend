class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :email, :description, :image_url, :user_id
end
