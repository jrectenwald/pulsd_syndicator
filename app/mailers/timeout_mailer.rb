class TimeoutMailer < ApplicationMailer

  def submit_event(event, email)
    @event = event
    mail(to: email, subject: @event.name)
  end

end
