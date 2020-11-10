# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

class User 
    has_many :registrations
    has_many :dance_classes_as_student, through: :registrations, source: :dance_class
    has_many :dance_classes_as_teacher, class_name: "DanceClass"

    validates :first_name, :last_name, presence: true 
    validates :phone_number, :email, presence: true, uniqueness: true 
end 

# 1. a user can have many dance classes as a dancer (through registrations), but also,
# a user can have many dance classes as a teacher. 
# right now, class User has_many dance_classes, through :registrations, as a dancer 
# but does class User also need to has_many dance_classes, as a teacher? 
# because DanceClass belongs to User (as a teacher). 

# 3. a lot of stuff from the devise cheatsheet was already done....?

class DanceClass 
    has_many :registrations 
    has_many :dancers, through: :registrations, source: :user 
    belongs_to :style
    belongs_to :studio
    belongs_to :teacher, class_name: :user or "User"

    validates :name, :style_id, :studio_id, :teacher_id, presence: true 
end 

class Registration
    belongs_to :dancer, class_name: :user 
    belongs_to :dance_class

    validates :dancer_id, :dance_class_id, :start_time, :end_time, :date, presence: true 
end 

class Style
    has_many :dance_classes 
    
    validates :name, presence: true 
end 

class Studio
    has_many :dance_classes
    belongs_to :studio_owner, class_name: :user 

    validates :name, :location, :studio_owner_id 
end 

# want users to be able to have their own show page (a profile)
# users class created by devise weird? added users controller and views folder 
# not recognizing user paths




