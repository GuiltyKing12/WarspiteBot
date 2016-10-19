require 'bundler/setup'
require 'discordrb'
require 'yaml'

# main bot module
module WarspiteBot
  Dir["#{File.dirname(__FILE__)}/warspite_bot/*.rb"].each { |file| require file }

  CONFIG = Config.new

  BOT = Discordrb::Commands::CommandBot.new(
          client_id: CONFIG.client_id,
          token: CONFIG.token,
          prefix: CONFIG.prefix
  )

  Commands.include!
  Events.include!

  BOT.run
end
  
