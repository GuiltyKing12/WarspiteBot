module WarspiteBot
  # contains all the events
  module Events
    Dir['lib/warspite_bot/evennts/*.rb'].each { |file| load file }

    @events = [

    ]

    def self.include!
      @events.each do |event|
        WarspiteBot::BOT.include!(event)
      end
    end
  end
end
