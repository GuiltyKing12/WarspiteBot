module WarspiteBot
  module Commands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Poke
      extend Discordrb::Commands::CommandContainer
      command(:poke, description: 'Checks for response from Warspite') do |event|
        channel = event.user.voice_channel

        event.respond('Admiral, what is it?')

        next puts "You're not in any voice channel!" unless channel

        puts "Connected to channel #{channel}"

        event.bot.voice_connect(channel)

        voice_bot = event.voice

        puts "playing poke"

        voice_bot.play_dca('data/poke.dca')
      end
    end
  end
end
