module WarspiteBot
  # contains all the events
  module Events
    Dir['lib/warspite_bot/events/*.rb'].each { |file| load file }

    @events = [
      Mention,
      MemberJoin,
      MemberUpdate,
      Ready
    ]

    def self.include!
      @events.each do |event|
        WarspiteBot::BOT.include!(event)
      end
    end
  end
end
