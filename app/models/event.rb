class Event < ActiveRecord::Base
  belongs_to :admin
  has_one :event_time
  has_one :venue

  accepts_nested_attributes_for :event_time, :venue

  def address
    @street
  end

end
