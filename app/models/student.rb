class Student < ApplicationRecord
  devise :omniauthable, :omniauth_providers => [:facebook]
  has_many :course_students
  has_many :courses, through: :course_students
  has_many :courses
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates_presence_of :username, :first_name, :last_name

  def full_name
    self.first_name + " " + self.last_name
  end
  
  def self.new_with_session(params, session)
    super.tap do |student|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        student.email = data["email"] if student.email.blank?
      end
    end
  end
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
      student.email = auth.info.email
      student.password = Devise.friendly_token[0,20]
      student.first_name = auth.info.first_name
      student.last_name = auth.info.last_name
    end
  end
end
