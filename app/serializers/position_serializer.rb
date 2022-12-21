class PositionSerializer < ActiveModel::Serializer
  attributes :id, :name, :resume_id, :user_id
end
