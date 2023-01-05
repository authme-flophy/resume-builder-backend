class ProgrammingLanguageSerializer < ActiveModel::Serializer
  attributes :id, :language_name, :resume_id, :user_id
  has_one :user
  has_one :resume
end
