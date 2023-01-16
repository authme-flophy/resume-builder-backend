class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :resume_id

      t.timestamps
    end
  end
end
