class Event < ActiveRecord::Base
  belongs_to :admin
  has_one :event_time
  has_one :venue
end
