class AddTrayIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :tray_id, :string
  end
end
