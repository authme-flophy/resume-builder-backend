class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name, :email, :username, :image_url

  def image_url
    object.image.url
  end
end
