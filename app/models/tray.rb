class Tray < ActiveRecord::Base
  has_many :plants, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :tasks, dependent:  :destroy
  has_many :datalogs, dependent:  :destroy
  has_many :tray_cycles
  accepts_attachments_for :images, attachment: :file, append: true


end
