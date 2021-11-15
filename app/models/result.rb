class Result < ApplicationRecord
  belongs_to :reason
end

def youtube_get(categories)
  videos = []
  categories.each do |category|
    videos << Exercise.where(category: category).sample
  end
  videos
end
