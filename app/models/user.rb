class User < ApplicationRecord

  has_one :favourites
  has_many :bids
  has_many :cars

  has_secure_password
end
