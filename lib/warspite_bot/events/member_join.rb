module WarspiteBot
  module Events
    # when a new member joins
    module MemberJoin
      extend Discordrb::EventContainer
      member_join do |event|
        event.respond("Welcome to the fleet #{event.user.username}!")
      end
    end
  end
end
