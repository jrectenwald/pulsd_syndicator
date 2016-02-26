module Adapters
  class TheSkint

    def initialize(event)
      @event = event
      @agent = Mechanize.new
    end

    def submit_form
      page = agent.get('http://www.theskint.com/contact/')
      form = page.form_with(:class => 'wpcf7-form')
      form.your-name = @event.admin.name
      form.your-email = @event.email
      form.your-subject = @event.name
      form.your-message = @event.date_end
      agent.submit(form)
    end

  end
end