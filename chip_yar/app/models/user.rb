class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         def change
       add_column :users, :first_name, :string
       add_column :users, :last_name, :string
       add_column :users, :user_name, :string
       add_column :users, :Date_Of_Birth, :string
         end


end
