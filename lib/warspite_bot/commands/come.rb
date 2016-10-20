module WarspiteBot
  module Commands
    # command for Warspite to connect to same voice channel
    module Come
      extend Discordrb::Commands::CommandContainer
      command(:come, description: 'Commands Warspite to connect to current voice channel if in one') do |event|
        channel = event.user.voice_channel

        next puts "You're not in any voice channel!" unless channel

        WarspiteBot::CURRENTCHANNEL.channel = channel

        event.bot.voice_connect(channel)

        voice_bot = event.voice

        event << "I am here"
      end
    end
  end
end
