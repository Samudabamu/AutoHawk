class Car < ApplicationRecord

  belongs_to :user, optional: true
  has_many :bids
  belongs_to :favourite, optional: true

  enum bid_status: [:upcoming, :live, :failed, :sold]


end
