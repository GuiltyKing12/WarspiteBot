require 'bundler/setup'
require 'discordrb'
require 'yaml'

# main bot module
module WarspiteBot
  # load in all the needed files for commands, config, and events
  Dir["#{File.dirname(__FILE__)}/warspite_bot/*.rb"].each { |file| require file }

  # initialize -> gets the information from config file
  CONFIG = Config.new

  CURRENTCHANNEL = CurrentChannel.new

  # sets up the bot, currently simple with just enough to make the bot
  BOT = Discordrb::Commands::CommandBot.new(
          client_id: CONFIG.client_id,
          token: CONFIG.token,
          prefix: CONFIG.prefix
  )

  # need to add the commands and events to the Bot itself
  Commands.include!
  Events.include!

  # runs the bot
  BOT.run
end
  
