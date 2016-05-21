class CreateTrayCycles < ActiveRecord::Migration
  def change
    create_table :tray_cycles do |t|
      t.string :title
      t.references :tray, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
