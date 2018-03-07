class ChangeAuctionDateType < ActiveRecord::Migration[5.1]
  def change
    change_column :cars, :auction_date, :datetime
  end
end
