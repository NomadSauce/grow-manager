class AddRescapToTrays < ActiveRecord::Migration
  def change
    add_column :trays, :rescap, :integer
  end
end
