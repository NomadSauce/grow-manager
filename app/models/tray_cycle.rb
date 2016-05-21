class TrayCycle < ActiveRecord::Base
  belongs_to :tray
  acts_as_schedulable :schedule
end
