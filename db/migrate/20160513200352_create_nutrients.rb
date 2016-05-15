class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients do |t|
      t.string :title
      t.string :manufacturer
      t.float :price
      t.string :unit

      t.timestamps null: false
    end
  end
end
