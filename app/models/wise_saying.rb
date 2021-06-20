class WiseSaying < ApplicationRecord
  validates :name, presence: true
  validates :people, presence: true
end
