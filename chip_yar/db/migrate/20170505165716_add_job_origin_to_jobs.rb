class AddJobOriginToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :Job_Origin, :string
  end
end
