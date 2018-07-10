class Course < ApplicationRecord
  belongs_to :student
  belongs_to :goal
end
