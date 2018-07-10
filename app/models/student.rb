class Student < ApplicationRecord
  has_many :goals
  has_many :courses, through: :goals
  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end
end
