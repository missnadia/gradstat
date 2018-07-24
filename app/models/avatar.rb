class Avatar < ApplicationRecord
  belongs_to :student
  validates :url, presence: true
  attribute :url, :string, default: "https://images-na.ssl-images-amazon.com/images/I/51zLZbEVSTL._SY355_.jpg"
end  