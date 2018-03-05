class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.text :number_plate

      t.timestamps
    end
  end
end
