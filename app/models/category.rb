class Category < ActiveRecord::Base
  has_many :grows
  has_many :trays
  has_many :plants

end
