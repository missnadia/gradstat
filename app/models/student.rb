class Student < ApplicationRecord
  has_many :course_students
  has_many :courses, through: :course_students
  has_many :courses
  has_secure_password
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
