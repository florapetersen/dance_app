class ClassRegistration < ApplicationRecord
  belongs_to :dancer, class_name: "User"
  belongs_to :dance_class
  validates :dancer_id, :dance_class_id, :start_time, :end_time, :date, presence: true 
end
