class SchoolClass < ApplicationRecord
  validates :title, presence: true
  validates :room_number, presence: true, numericality: true
end
