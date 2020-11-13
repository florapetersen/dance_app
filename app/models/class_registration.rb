class ClassRegistration < ApplicationRecord
  belongs_to :dancer, class_name: "User", foreign_key: :user_id
  belongs_to :dance_class
  validates :user_id, :dance_class_id, :injuries, :preferred_pronouns, :first_name, :last_name, presence: true 

end
