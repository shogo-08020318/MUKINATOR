class Exercise < ApplicationRecord
  validates :title, presence: true
  validate :video, presence: true
  validates :gender, presence: true
end
