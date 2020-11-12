class Style < ApplicationRecord
    has_many :dance_classes 
    
    validates :name, presence: true 

end
