class Studio < ApplicationRecord
  has_many :dance_classes
  belongs_to :studio_owner, class_name: "User", foreign_key: :user_id

  validates :name, :address, :city, :state, :zip_code, :contact_phone, :contact_email, presence: true 
end
