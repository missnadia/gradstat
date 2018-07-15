class Student < ApplicationRecord
  has_many :charts
  has_many :courses, through: :charts
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end
