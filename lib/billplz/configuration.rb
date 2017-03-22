module Billplz
  class Configuration
    attr_accessor :api_key, :api_url, :verbose, :perform_caching

    def initialize(options={})
      @verbose = false
      @perform_caching = true
    end

    def options
      hash = Hash.new
      %w[api_key api_url verbose perform_caching].map{|key| hash[key.to_sym] = send(key) }
      hash
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(args)
    @configuration ||= Configuration.new
    args.each do |arg|
      @configuration.send("#{arg.first}=", arg.last)
    end
  end

  def self.options
    @configuration.options
  end

  def self.configure
    yield configuration
  end

  def self.reset
    @configuration = nil
  end
end