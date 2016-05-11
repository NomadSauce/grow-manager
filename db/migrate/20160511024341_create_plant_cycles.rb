class CreatePlantCycles < ActiveRecord::Migration
  def change
    create_table :plant_cycles do |t|
      t.string :title
      t.integer :interval
      t.integer :frequency
      t.references :plant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
