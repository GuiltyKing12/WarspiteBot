module WarspiteBot
  module Events
    # Whenever mentioned she should reply as such
    module Mention
      extend Discordrb::EventContainer
      mention do |event|
        Thread.new {event.bot.send_file(event.channel.id, File.new('data/images/warspite.png'))}
        event.respond('Battleship Warspite, reporting for duty')
      end
    end
  end
end
