class Course < ApplicationRecord
  has_many :charts
  has_many :students, through: :charts
  has_many :course_students
  has_many :students, through: :course_students
  validates :name, presence: true
  validates :date, presence: true

  LESSONS = [
    "Introduction to Rails",
    "Rails Application Basics",
    "Rails MVC",
    "Rails Static Request",
    "Rails Hello World",
    "Video Review: Intro to Rails",
    "ActiveRecord Models and Rails",
    "ActiveRecord Models and Rails Lab",
    "Intro to REST",
    "RESTful Action Index Lab",
    "Rails Dynamic Request",
    "Rails Dynamic Request Lab",
    "Rails URL Helpers",
    "Rails URL Helpers Lab",
    "Rails form_tag",
    "Rails form_tag Lab"
  ]

  def self.total_hours
    self.sum(:time_spent)
  end

  def self.total_completed
    self.where(completed: true).count
  end

  def self.total_lessons
    self.distinct.count(:name)
  end
end
