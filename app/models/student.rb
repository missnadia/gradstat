class Student < ApplicationRecord
  has_many :course_students
  has_many :courses, through: :course_students
  has_many :courses
  has_one :avatar
  accepts_nested_attributes_for :avatar
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end
