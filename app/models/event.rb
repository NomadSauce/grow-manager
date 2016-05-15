class Event < ActiveRecord::Base
  acts_as_schedulable :schedule
end
