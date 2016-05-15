class Nutrient < ActiveRecord::Base
  has_many :nutrient_calcs
end
