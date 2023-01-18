class CreateProgrammingLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :programming_languages do |t|
      t.string :language_name
      t.references :user, null: false, foreign_key: true
      t.references :resume, null: false, foreign_key: true

      t.timestamps
    end
  end
end
