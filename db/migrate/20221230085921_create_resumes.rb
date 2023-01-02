class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
