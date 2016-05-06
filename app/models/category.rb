class Category < ActiveRecord::Base
  belongs_to :user
  has_many :grows
  has_many :trays
  has_many :plants

end
