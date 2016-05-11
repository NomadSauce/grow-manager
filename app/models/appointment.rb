class Appointment < ActiveRecord::Base

  validates :task, presence: true
  validates :time, presence: true



end
