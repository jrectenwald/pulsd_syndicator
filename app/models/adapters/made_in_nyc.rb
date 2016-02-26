module Adapters
  class MadeInNyc

    def initialize(event)
      @event = event
      @agent = Mechanize.new
    end

    def submit_event
      page = @agent.get('http://madeinnyc.org/submit-your-event/')
      form = page.form_with(:id => 'event-o-matic')
      form.event_name = @event.name
      form.date_start = @event.date_start
      form.time_start = @event.time_start
      form.date_end = @event.date_end
      form.time_end = @event.time_end
      form.event_description = @event.description
      form.venue_name = @event.venue.name
      form.venue_address = @event.address
      form.event_url = @event.url
      form.event_phone = @event.venue.phone_number
      form.user_email = @event.admin.email
      form.user_name = @event.admin.name
      @agent.submit(form)
    end

  end
end