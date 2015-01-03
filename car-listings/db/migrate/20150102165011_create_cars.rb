class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :color, null: false
      t.string :year, null: false
      t.string :mileage, null: false
      t.text :description
      t.string :country, null: false
      t.integer :manufacturer_id, null: false

      t.timestamps null: false
    end
    add_index :cars, :manufacturer_id
  end
end
