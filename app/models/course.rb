class Course < ApplicationRecord
  has_many :charts
  has_many :students, through: :charts
  validates :name, presence: true, uniqueness: true
  validates :date, presence: true

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
