###Syndicator: Pulsd Software Developer Code Challenge Project
Deployed [Admin Panel](https://pulsd-syndicator.herokuapp.com/events/new)


####Event Websites
1. [Timeout NY](http://www.timeout.com/newyork/get-listed)
2. [Nifty NYC](http://www.niftynyc.com/submit-event/)
3. [The Skint](http://www.theskint.com/contact/)
4. [Eventbrite](https://www.eventbrite.com/developer/v3/endpoints/events/)
5. [MadeInNYC](http://madeinnyc.org/submit-your-event/)

####Description
The app's homepage allow's an admin to add events to the postgres database.
Every event has a property called syndicated with a default value of false. Once per hour, the app searches the database for all events that have not been syndicated and runs a rake task which submits the event to the five websites.

The only site with an API is Eventbrite. I assumed that all of the events were going to be paid events, and that Pulsd would be able to sell tickets directly.

The Time Out NY magazine/website only accepts email submissions, so an email is generated from the event instance with the necessary information and is sent to the appropriate editor based on the event category.

Nifty NYC, The Skint, and Made in NYC submissions are all one page forms without authentication validating that the user is human. I used the Mechanize gem to fill out and submit these forms.

####Tools
1. Framework: Ruby on Rails
2. Host: Heroku
3. Styling: Bootstrap
4. Database: Postgres
5. Email Automation: ActionMailer
6. Website Form Automation: Mechanize
