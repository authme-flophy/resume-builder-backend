class JobExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :company_name, :start_year, :end_year, :resume_id
end
