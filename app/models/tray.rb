class Tray < ActiveRecord::Base
  belongs_to :category
  has_many :plants, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :tasks, dependent:  :destroy
  has_many :datalogs, dependent:  :destroy
  accepts_attachments_for :images, attachment: :file, append: true


end
