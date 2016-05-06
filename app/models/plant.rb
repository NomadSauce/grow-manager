class Plant < ActiveRecord::Base
  belongs_to :category
  belongs_to :tray
  has_many :plantdats
  has_many :images, dependent:  :destroy
  has_many :tasks, dependent: :destroy
  accepts_attachments_for :images, attachment: :file, append: true

  #before_create do
  #  Species.create(name: self.title)
  #  #Category.create(name: self.title)
  #end

  #before_destroy do
    #Category.find_by(name: self.title).delete
  #end

end
