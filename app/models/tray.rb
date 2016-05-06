class Tray < ActiveRecord::Base
  belongs_to :category
  has_many :plants, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :tasks
  has_many :datalogs
  accepts_attachments_for :images, attachment: :file, append: true



  after_create do

    if self.title.length != 0
      Category.create(name: self.title)
    else
      flash[:danger] = "Your text must be longer than 0"
    end

  end

  before_destroy do
    Category.find_by(name: self.title).delete
  end
end
