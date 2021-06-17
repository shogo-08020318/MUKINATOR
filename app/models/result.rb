class Result < ApplicationRecord
  belongs_to :reason
  
  enum gender: { man: 0, woman: 1 }
end
