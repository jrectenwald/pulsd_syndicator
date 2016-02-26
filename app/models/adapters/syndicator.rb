module Adapters
  class Syndicator

    def update_events
      events = Event.where(syndicated: false)
      events.each do |event|
        syndicate(event)
        event.syndicated = true
      end
    end

    def syndicate(event)
      Adapters::TimeoutNY.new(event).submit_event
      Adapters::TheSkint.new(event).submit_event
      Adapters::NiftyNyc.new(event).submit_event
      Adapters::MadeInNyc.new(event).submit_event
      Adapters::Eventbrite.new(event).submit_event
    end

  end
end