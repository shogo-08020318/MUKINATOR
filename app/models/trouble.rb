class Trouble < ApplicationRecord
  validates :name, presence: true
  validates :kind, presence: true

  enum kind: { health: 0, ambition: 1, relationship: 2, money: 3 }
end
