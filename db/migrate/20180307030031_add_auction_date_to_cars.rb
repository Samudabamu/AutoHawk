class AddAuctionDateToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :auction_date, :date
  end
end
