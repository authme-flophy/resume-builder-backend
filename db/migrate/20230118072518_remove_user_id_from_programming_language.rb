class RemoveUserIdFromProgrammingLanguage < ActiveRecord::Migration[7.0]
  def change
    remove_column :programming_languages, :user_id, :integer
  end
end
