class Reason < ApplicationRecord
  belongs_to :trouble
  vaidates :name, presence: true
end
