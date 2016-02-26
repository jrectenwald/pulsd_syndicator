module Adapters
  class Eventbrite

    def initialize(event)
      @event = event
      @admin = event.admin
      @event_time = event.event_time
      @venue = event.venue
    end

    def submit_event
      url = "https://www.eventbriteapi.com/v3/events/"
      url += "?token=#{ENV['EVENTBRITE_OAUTH_TOKEN']}"
      url += "&event.name.html=#{@event.name}"
      url += "&event.start.utc=#{event.start_datetime}"
      url += "&event.end.utc=#{event.end_datetime}"
      url += "&event.end.timezone=America/New_York"
      url += "&event.currency=USD"
      url += "&event.start.timezone=America/New_York"
      @event = HTTParty.post(url)
    end

    def create_ticket_class
      url = "https://www.eventbriteapi.com/v3/events/"
      url += event['id'] + "/ticket_classes/"
      url += "?token=#{ENV['EVENTBRITE_OAUTH_TOKEN']}"
      url += "&ticket_class.name=paid"
      url += "&ticket_class.quantity_total=#{@event.ticket_quantity}"
      url += "&ticket_class.cost=USD,#{@event.ticket_price}"
      HTTParty.post(url)
    end

    def publish_event
      url = "https://www.eventbriteapi.com/v3/events/"
      url += event["id"] + "/publish/"
      url += "?token=#{ENV['EVENTBRITE_OAUTH_TOKEN']}"
      HTTParty.post(url)
    end

  end
end