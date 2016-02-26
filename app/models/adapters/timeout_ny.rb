module Adapters
  class TimeoutNY

    EMAILS = {test: "jimrec101@gmail.com"}

    def initialize(event)
      @event = event
    end

    def submit_event
      TimeoutMailer.submit_event(@event, EMAILS[@event.category.to_sym]).deliver_now
    end

  end
end