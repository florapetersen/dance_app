class ClassRegistration < ApplicationRecord
  belongs_to :dancer, class_name: "User", foreign_key: :user_id
  belongs_to :dance_class
  validates :user_id, :dance_class_id, :injuries, :preferred_pronouns, :first_name, :last_name, presence: true 

  def self.by_dance_class(dance_class)
    where(dance_class_id: dance_class.id)
  end
  
  def self.upcoming 
    where("day > ?", Time.now)
  end

  def self.past 
    where("day < ?", Time.now)
  end
end
