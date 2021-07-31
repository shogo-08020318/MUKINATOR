class Exercise < ApplicationRecord
  validates :title, presence: true
  validates :video, presence: true
  validates :category, presence: true
end
