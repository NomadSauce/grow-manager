class CreateDatalogs < ActiveRecord::Migration
  def change
    create_table :datalogs do |t|
      t.references :tray, index: true, foreign_key: true
      t.float :ambcur
      t.float :ambmin
      t.float :ambmax
      t.float :folcur
      t.float :folmin
      t.float :folmax
      t.float :ph
      t.float :heatmat
      t.float :h202
      t.float :tds

      t.timestamps null: false
    end
  end
end
