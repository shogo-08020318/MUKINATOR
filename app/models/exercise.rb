class Exercise < ApplicationRecord
  validates :title, presence: true
  validates :video, presence: true
  validates :gender, presence: true

  enum gender: { man: 0, woman: 1 }
end
