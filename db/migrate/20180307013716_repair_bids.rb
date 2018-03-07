class RepairBids < ActiveRecord::Migration[5.1]
  def change
    remove_column :bids, :current_bid
    remove_column :bids, :opening_bid
    rename_column :bids, :bidder_user_id, :user_id
    add_column :bids, :car_id, :integer
  end
end


# create_table "bids", force: :cascade do |t|
#   t.integer "current_bid"
#   t.integer "opening_bid"
#   t.integer "bidder_user_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
