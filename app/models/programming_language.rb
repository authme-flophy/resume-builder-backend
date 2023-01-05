class ProgrammingLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :resume
end
