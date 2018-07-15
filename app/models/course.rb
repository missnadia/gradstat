class Course < ApplicationRecord
  has_many :charts
  has_many :students, through: :charts

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

end
