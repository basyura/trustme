
module Trustme
  class Config
    def initialize
      @config = YAML.load(open(File.expand_path('~/.trustme/token'), 'r', &:read))
    end
    def method_missing(method , *args)
      @config[method.to_s]
    end
  end
end
