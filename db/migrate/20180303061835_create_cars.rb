class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.integer :year
      t.integer :kilometers
      t.string :model
      t.integer :opening_bid

      t.timestamps
    end
  end
end
