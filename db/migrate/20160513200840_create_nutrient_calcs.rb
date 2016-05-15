class CreateNutrientCalcs < ActiveRecord::Migration
  def change
    create_table :nutrient_calcs do |t|
      t.string :product
      t.integer :vegtime
      t.integer :flowertime
      t.float :rezsize
      t.string :rezunits
      t.boolean :aerstone
      t.string :outputunits
      t.references :nutrient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
