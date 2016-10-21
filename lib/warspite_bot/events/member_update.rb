module WarspiteBot
  module Events
    # when member updates status
    module MemberUpdate
      extend Discordrb::EventContainer
        presence do |event|
          if event.status == :online
            message = "Welcome back #{event.user.username}!"
          elsif event.status == :idle
            message = "#{event.user.username} is currently idle..."
          elsif event.status == :offline
            message = "#{event.user.username} has gone offline."
          elsif event.status == :dnd
            message = "Please do not disturb #{event.user.username}."
          end
          event.server.text_channels.each do |channel|
            event.bot.send_temporary_message(channel.id, message, 5)
          end
        end
    end
  end
end
