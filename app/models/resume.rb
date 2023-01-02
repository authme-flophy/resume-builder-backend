class Resume < ApplicationRecord
  belongs_to :user
  has_many :schools, dependent: :destroy
  has_many :job_experiences, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_many :programming_languages, dependent: :destroy
end
