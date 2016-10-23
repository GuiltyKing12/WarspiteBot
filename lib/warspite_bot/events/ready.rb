module WarspiteBot
  module Events
    # Notify when Warspite is readied
      module Ready
        extend Discordrb::EventContainer
        ready do
          BOT.game = CONFIG.game
          
        end
      end
  end
end
