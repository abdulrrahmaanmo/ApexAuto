class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.float :price_per_day
      t.string :brand
      t.integer :seats
      t.string :color
      t.boolean :automatic
      t.boolean :bluetooth
      t.string :fuel_type

      t.timestamps
    end
  end
end
