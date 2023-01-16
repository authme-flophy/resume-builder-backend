class AddUserIdToPositions < ActiveRecord::Migration[7.0]
  def change
    add_column :positions, :user_id, :integer
  end
end
