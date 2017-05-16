class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :Description
      t.string :Job_Destination
      t.integer :Num_Containers_Transported
      t.decimal :Job_Cost
      t.integer :Work_Order_Num

      t.timestamps
    end
  end
end
