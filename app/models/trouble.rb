class Trouble < ApplicationRecord
  validates :name, presence: true
  validates :kind, presence: true
end
