class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
      t.string :Boat_Name
      t.float :Num_Containers
      t.string :Current_Location
      t.string :Boat_Origin

      t.timestamps
    end
  end
end
