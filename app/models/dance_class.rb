class DanceClass < ApplicationRecord
  has_many :class_registrations 
  has_many :dancers, through: :class_registrations, source: :user 
  belongs_to :style
  belongs_to :studio
  belongs_to :teacher, class_name: "User"

  validates :name, :style_id, :studio_id, :teacher_id, presence: true 
end 
