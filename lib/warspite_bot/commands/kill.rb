module WarspiteBot
  module Commands
    
    module Kill
      extend Discordrb::Commands::CommandContainer
      command(:kill, description: 'Shuts down bot') do |event|
        if event.user.owner?
          event.bot.send_temporary_message(event.channel.id, 'Warspite leaving duty', 1)
          event.bot.stop
        end
      end
    end
  end
end
