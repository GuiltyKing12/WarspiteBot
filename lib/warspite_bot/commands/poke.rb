module WarspiteBot
  module Commands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Poke
      extend Discordrb::Commands::CommandContainer
      command(:poke, description: 'Checks for response from Warspite') do |event|
        event.respond('Admiral, what is it?')

        voice_bot = event.voice

        next puts "Not in channel" unless WarspiteBot::CURRENTCHANNEL.channel == event.user.voice_channel

        puts "playing poke"

        voice_bot.play_dca('data/poke.dca')
      end
    end
  end
end
