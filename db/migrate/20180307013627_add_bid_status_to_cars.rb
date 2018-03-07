class AddBidStatusToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :bid_status, :integer
  end
end
