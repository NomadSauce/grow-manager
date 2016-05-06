class Plantdat < ActiveRecord::Base
  belongs_to :plant
  belongs_to :tray
end
