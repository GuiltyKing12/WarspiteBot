module WarspiteBot
  # module for commands
  module Commands
    #Dir['lib/warspite_bot/commands/*.rb'].each { |file| load file }
    Dir["#{File.dirname(__FILE__)}/commands/*.rb"].each { |file| require file }

    @commands = [
      Ping,
      Eval
    ]

    def self.include!
      @commands.each do |command|
        puts command
        WarspiteBot::BOT.include!(command)
      end
    end
  end
end
