class Bid < ApplicationRecord

  belongs_to :user
  belongs_to :car

  MIN_INCREMENT = 50
end
