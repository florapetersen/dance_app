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
     
  validates :first_name, :last_name, :phone_number, presence: true 
  validates :email, presence: true, uniqueness: true 

  def self.from_google(uid:, email:, full_name:, avatar_url:)
    if user = User.find_by(email: email)
      user.update(uid: uid, full_name: full_name, avatar_url: avatar_url) unless user.uid.present?
      user
    else
      User.create(
        email: email,
        uid: uid,
        full_name: full_name,
        avatar_url: avatar_url,
        password: SecureRandom.hex
      )
    end
  end
end
