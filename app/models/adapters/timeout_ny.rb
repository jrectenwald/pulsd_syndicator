module Adapters
  class TimeoutNY

    EMAILS = {}

    def initialize(event)
      @event = event
    end

    def submit_event
      TimeoutMailer.submit_event(@event, EMAILS[@event.category]).deliver_now
    end

  end
end