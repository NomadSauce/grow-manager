class Grow < ActiveRecord::Base
  belongs_to :category

  belongs_to :user

  after_create do
    Category.create(name: self.title)
  end

  before_destroy do
    Category.find_by(name: self.title).delete
  end
end
