class SessionSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :second_name, :email, :image_url

  def image_url
    object.image.url
  end

end
