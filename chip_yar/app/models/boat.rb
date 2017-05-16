class Boat < ApplicationRecord
has_many :jobs, through: :boat_jobs
has_many :boat_jobs

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "boat4_:style.jpg"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



end
