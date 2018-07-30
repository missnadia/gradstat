class Avatar < ApplicationRecord
  belongs_to :student
  validates :url, presence: true
end