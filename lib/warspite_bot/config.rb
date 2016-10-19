module WarspiteBot
  # Sets up the bot configuration
  class Config
    def initialize
      @config = YAML.load_file("#{Dir.pwd}/data/config.yaml")
      @config.keys.each do |key|
        self.class.send(:define_method, key) do
          @config[key]
        end
      end
    end
  end
end
