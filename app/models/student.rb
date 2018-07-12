class Student < ApplicationRecord
  has_many :courses
  has_many :charts, through: :courses
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end
