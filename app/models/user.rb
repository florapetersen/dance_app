class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :class_registrations
  has_many :dance_classes_as_student, through: :class_registrations, source: :dance_class
  has_many :dance_classes_as_teacher, class_name: "DanceClass"
  has_many :studios_as_studio_owner, class_name: "Studio"
     
  validates :first_name, :last_name, :injuries, :preferred_pronouns, presence: true 
  validates :phone_number, :email, presence: true, uniqueness: true 
end
