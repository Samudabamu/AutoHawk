class Car < ApplicationRecord

  belongs_to :user
  has_many :bids
  belongs_to :favourite


end
