class Job < ApplicationRecord

validates :Job_Cost, numericality: {greater_than: 1000.00}

validates :Description, length: { minimum: 50 }

validates :Description, length: { maximum: 100 }

has_many :boats, through: :boat_jobs
has_many :boat_jobs




end
