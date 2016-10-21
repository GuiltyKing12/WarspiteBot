module WarspiteBot
  module Events
    # Whenever mentioned she should reply as such
    module Mention
      extend Discordrb::EventContainer
      mention do |event|
        event.respond('Battleship Warspite, reporting for duty')
      end
    end
  end
end
