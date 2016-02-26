module Adapters
  class NiftyNyc

    def initialize(event)
      @event = event
      @agent = Mechanize.new
    end

    def submit_event
      page = agent.get('http://www.niftynyc.com/submit-event/')
      form = page.form_with(:id => 'ninja_forms_form_2')
      form.ninja_forms_field_6 = @event.name
      form.ninja_forms_field_8 = @event.date_start
      form.ninja_forms_field_11 = @event.time_start
      form.ninja_forms_field_9 = @event.venue.address
      form.ninja_forms_field_12 = @event.ticket_price
      form.ninja_forms_field_17 = @event.description
      form.ninja_forms_field_18 = @event.admin.name
      form.ninja_forms_field_19 = @event.admin.email
      form.ninja_forms_field_21 = "No thanks."
      agent.submit(form)
    end

  end
end