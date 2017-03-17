module WarspiteBot
  module Commands
    # command for Warspite to connect to same voice channel
    module Come
      extend Discordrb::Commands::CommandContainer
      command(:come, description: 'Commands Warspite to connect to current voice channel if in one') do |event|
        channel = event.user.voice_channel

        next event.bot.send_temporary_message(event.channel.id, 'You are not in a channel!!', 5) unless channel

        WarspiteBot::CURRENTCHANNEL.channel = channel

        event.bot.voice_connect(channel)

        voice_bot = event.voice
        event.bot.send_temporary_message(event.channel.id, 'Here and ready', 5)
        puts "In channel"
      end
    end
  end
end
