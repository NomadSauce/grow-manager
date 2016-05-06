class Pic < ActiveRecord::Base
  belongs_to :plant
  attachment :file
end
