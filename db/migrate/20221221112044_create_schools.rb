class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :course_name
      t.string :name
      t.integer :start_year
      t.integer :end_year
      t.integer :resume_id

      t.timestamps
    end
  end
end
