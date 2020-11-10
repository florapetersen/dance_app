class DanceClass < ApplicationRecord
  belongs_to :style
  belongs_to :studio
  belongs_to :user
end
