class PlantCycle < ActiveRecord::Base
  belongs_to :plant
  require "recurrence"

  def self.daily(plant_cycle_params)
    r = Recurrence.new(:every => :day)
  end
end
