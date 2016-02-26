class Event < ActiveRecord::Base
  belongs_to :admin
  has_one :event_time
  has_one :venue

  accepts_nested_attributes_for :event_time, :venue

  def address
    "#{self.venue.name}\n#{self.venue.street}\n#{self.venue.city}, #{self.venue.state} #{self.venue.zip_code}"
  end

  def date_start
    self.event_time.start.strftime("%m/%d/%Y") 
  end

  def time_start
    self.event_time.start.strftime("%I:%M%p") 
  end

  def date_end
    self.event_time.start.strftime("%m/%d/%Y") 
  end

  def time_end
    self.event_time.start.strftime("%I:%M%p") 
  end

end
