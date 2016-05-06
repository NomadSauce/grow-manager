class AddUserIdToGrows < ActiveRecord::Migration
  def change
    add_column :grows, :user_id, :integer
  end
end
