class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.integer :current_bid
      t.integer :opening_bid
      t.integer :bidder_user_id

      t.timestamps
    end
  end
end
