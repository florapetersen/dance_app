# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
    - Studio has_many DanceClasses
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    - ClassRegistration belongs_to DanceClass
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    - DanceClass has_many :dancers, through: :class_registrations
    - User has_many dance_classes_as_student, through: class_registrations
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    - User has_many dance_classes_as_student, through: :class_registrations
    - Dance_class has_many dancers, through: class_registrations
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    - class_registration has first_name, last_name, preferred_pronouns, and injuries attributes
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    - User
        validates :first_name, :last_name, :phone_number, presence: true 
        validates :email, presence: true, uniqueness: true
    -  ClassRegistration
        validates :user_id, :dance_class_id, :first_name, :last_name, presence: true 
    - DanceClass
        validates :name, :day, :start_time, :duration, presence: true 
    - Day
        validates :name, presence: true 
    - Studio
        validates :name, :address, :city, :state, :zip_code, :contact_phone, :contact_email, presence: true 
    - Style
        validates :name, presence: true 
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    - @class_registration.upcoming 
    - URL: /class_registrations/
- [x] Include signup (how e.g. Devise)
    - Devise
- [x] Include login (how e.g. Devise)
    - Devise
- [x] Include logout (how e.g. Devise)
    - Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    - Google Oauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    - /studios/1/dance_classes
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - /dance_classes/21/class_registrations/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    - studios/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate