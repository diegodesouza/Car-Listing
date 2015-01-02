class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :manufacturer, null: false
      t.string :color, null: false
      t.string :year, null: false
      t.text :description
      t.string :country, null: false
      t.integer :manufacturer_id, null: false

      t.timestamps null: false
    end
  end
end
