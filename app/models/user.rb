class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_one_attached :image

  has_many :resumes, dependent: :destroy
  has_many :programming_languages, through: :resumes
  has_many :job_experiences, through: :resumes
  has_many :schools, through: :resumes
  has_one :position, dependent: :destroy
end