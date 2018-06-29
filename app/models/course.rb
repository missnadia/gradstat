class Course < ApplicationRecord
  has_many :goals
  has_many :students, through: :goals
end
