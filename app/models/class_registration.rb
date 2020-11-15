class ClassRegistration < ApplicationRecord
  belongs_to :dancer, class_name: "User", foreign_key: :user_id
  belongs_to :dance_class
  validates :user_id, :dance_class_id, :first_name, :last_name, presence: true 

  def self.by_dance_class(dance_class)
    where(dance_class_id: dance_class.id)
  end

  def dance_class_name
    self.dance_class.name 
  end 

  def self.upcoming 
    joins(:dance_class).where("dance_classes.start_time > ?", Time.now)
  end

  def self.past 
    joins(:dance_class).where("dance_classes.start_time < ?", Time.now)
  end

end
