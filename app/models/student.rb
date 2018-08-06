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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |student|
        student.provider = auth.provider
        student.uid = auth.uid
        student.name = auth.info.name
        student.oauth_token = auth.credentials.token
        student.oauth_expires_at = Time.at(auth.credentials.expires_at)
        student.save!
    end
end
end
