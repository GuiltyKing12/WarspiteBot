module WarspiteBot
  module Commands
    # get current status of users on server
    module GetStatus
      extend Discordrb::Commands::CommandContainer
      command(:status, description: "Gets the status of all users on server") do |event|
        puts "here"
        message = ""
        message << "Current user statuses:\n"
        event.server.members.each do |user|
          message << "#{user.username}: #{user.status}\n"
        end
        message
      end
    end
  end
end
