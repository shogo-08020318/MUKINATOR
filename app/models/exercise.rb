class Exercise < ApplicationRecord
  validates :video, presence: true
  validates :category, presence: true
end
