class AddSummaryFieldToJobExperience < ActiveRecord::Migration[7.0]
  def change
    add_column :job_experiences, :summary, :string
  end
end
