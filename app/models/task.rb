class Task < ActiveRecord::Base
  belongs_to :plant
  belongs_to :tray, dependent: :destroy


  def completed?
    !completed_at.blank?
  end
end
