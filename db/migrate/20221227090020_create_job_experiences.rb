class CreateJobExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :job_experiences do |t|
      t.string :title
      t.string :company_name
      t.integer :start_year
      t.integer :end_year
      t.integer :resume_id
      t.integer :user_id

      t.timestamps
    end
  end
end
