module WarspiteBot
  module Commands
    # get current status of users on server
    module GetStatus
      extend Discordrb::Commands::CommandContainer
      command(:status, description: "Gets the status of all users on server") do |event|
        puts "Getting Status"
        message = ""
        online = ""
        offline = ""

        online << "Online Users:\n"
        offline << "Offline Users:\n"

        event.server.members.each do |user|
          if user.status == :offline
            offline << "#{user.username}\n"
          else 
            online << "#{user.username}\n"
          end
        end
        message << online << "\n" << offline << "\n"
      end
    end
  end
end
