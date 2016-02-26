class TimeoutMailer < ApplicationMailer

  def submit_event(event, email)
    @event = event
    @url  = 'http://example.com/login'
    mail(to: email, subject: @event.name)
  end

end
