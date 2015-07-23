require "mega_lotto/version"
require "mega_lotto/drawing"
require "mega_lotto/core_ext"
require "mega_lotto/configuration"
require "mega_lotto/jackpot"
require "mega_lotto/holiday_drawing"
require "mega_lotto/helper"
#require "mega_lotto/railtie" if defined?(Rails)

begin
  require "pry"
rescue LoadError
end

module MegaLotto
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
