class Image < ActiveRecord::Base
  belongs_to :plant
  belongs_to :tray

  attachment :file
end
