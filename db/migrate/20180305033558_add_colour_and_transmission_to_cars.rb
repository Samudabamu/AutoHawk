class AddColourAndTransmissionToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :colour, :string
    add_column :cars, :transmission, :string
  end
end
