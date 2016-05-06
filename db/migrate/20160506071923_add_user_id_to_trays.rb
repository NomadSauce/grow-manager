class AddUserIdToTrays < ActiveRecord::Migration
  def change
    add_column :trays, :user_id, :integer
  end
end
