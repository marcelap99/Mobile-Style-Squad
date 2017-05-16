class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def change
add_column :users, :first_name, :string
add_column :users, :last_name, :string
add_column :users, :user_name, :string
add_column :users, :Date_Of_Birth, :string
  end


end
