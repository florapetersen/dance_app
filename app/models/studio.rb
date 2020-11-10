class Studio < ApplicationRecord
  has_many :dance_classes
  belongs_to :studio_owner, class_name: :user

  validates :name, :address, :city, :state, :zip_code, :contact_phone, :contact_email, :studio_owner_id, presence: true 
end
