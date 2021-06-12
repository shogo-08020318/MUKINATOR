class Reason < ApplicationRecord
  belongs_to :trouble
  validates :name, presence: true
end
