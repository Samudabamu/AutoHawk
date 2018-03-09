class Bid < ApplicationRecord

  belongs_to :user
  belongs_to :car

  validates :amount, presence: true
  validates :amount, numericality: true

  def self.last_bid_for_car( car_id )
    Bid.where(car_id: car_id).order(:created_at).last
  end



  MIN_INCREMENT = 50
end
