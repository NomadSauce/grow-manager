class PlantCycle < ActiveRecord::Base
  belongs_to :plant
  acts_as_schedulable :schedule
end
