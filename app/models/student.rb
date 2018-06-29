class Student < ApplicationRecord
  has_many :goals
  has_many :courses, through: :goals
  has_secure_password
end
