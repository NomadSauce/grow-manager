class AddDueDateToCycles < ActiveRecord::Migration
  def change
    add_column :cycles, :due_date, :datetime
  end
end
