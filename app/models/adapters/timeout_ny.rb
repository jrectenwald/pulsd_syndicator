module Adapters
  class TimeoutNY

    EMAILS = {Art: "art.ny@timeout.com", Books: "books.ny@timeout.com", Comedy: "comedy.ny@timeout.com", Dance: "dance.ny@timeout.com", Film: "film.ny@timeout.com", Food: "food.ny@timeout.com",Gay_and_Lesbian: "gay.ny@timeout.com", Kids: "kids.ny@timeout.com", Classical_Music: "classical.ny@timeout.com", Cabaret_Standards: "cabaret.ny@timeout.com", Other_Music: "musiclistings.ny@timeout.com", Nightlife: "nightlife.ny@timeout.com", Sex_and_Dating: "dating.ny@timeout.com", Shopping: "shopping.ny@timeout.com", Theater: "theater.ny@timeout.com", Test: "jimrec101@gmail.com"}

    def initialize(event)
      @event = event
    end

    def submit_event
      TimeoutMailer.submit_event(@event, EMAILS[@event.category.to_sym]).deliver_now
    end

    def self.emails
      EMAILS
    end

  end
end