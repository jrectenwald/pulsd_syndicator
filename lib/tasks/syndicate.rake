desc "Syndicate all unsyndicated events"

task syndicate: :environment do    
  syndicator = Adapters::Syndicator.new
  syndicator.update_events
end
