class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :task
      t.datetime :time

      t.timestamps null: false
    end
  end
end
