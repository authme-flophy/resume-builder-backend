class RemoveResumeIdFromPositions < ActiveRecord::Migration[7.0]
  def change
    remove_column :positions, :resume_id, :integer
  end
end
