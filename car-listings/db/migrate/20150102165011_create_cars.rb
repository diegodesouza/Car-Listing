class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :color, null: false
      t.string :year, null: false
      t.string :mileage, null: false
      t.text :description
      t.string :country, null: false
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
