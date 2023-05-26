class CreateProgrammingLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :programming_languages do |t|
      t.string :language_name
      t.integer :resume_id

      t.timestamps
    end
  end
end
