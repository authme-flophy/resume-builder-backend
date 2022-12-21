class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :name, :start_year, :end_year, :resume_id, :user_id
end
