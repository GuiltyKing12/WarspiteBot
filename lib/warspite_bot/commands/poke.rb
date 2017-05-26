module WarspiteBot
  module Commands
    # Responds with message and voice if in channel with her.
    # This used to check if bot is alive
    module Poke
      extend Discordrb::Commands::CommandContainer
      command(:poke, description: 'Checks for response from Warspite') do |event|
        if event.user.owner? 
           event.respond('Admiral, what is it?')
        else
           event.respond('What is it?')
        end

        voice_bot = event.voice
        voice_bot.stop_playing
        next puts "Not in channel" unless WarspiteBot::CURRENTCHANNEL.channel == event.user.voice_channel
        next puts "Currently Talking" unless !voice_bot.playing?

        puts "Warspite speaking"

        voice_bot.play_dca('data/poke.dca')
      end
    end
  end
end
