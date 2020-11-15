class DanceClass < ApplicationRecord
  has_many :class_registrations 
  has_many :dancers, through: :class_registrations, source: :user 
  belongs_to :style
  belongs_to :studio
  belongs_to :day
  belongs_to :teacher, class_name: "User", foreign_key: :user_id

  validates :name, :day, :start_time, :duration, presence: true 
end 
