class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer
      t.string :country

      t.timestamps null: false
    end
  end
end
