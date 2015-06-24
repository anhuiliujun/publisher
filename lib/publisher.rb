module Publisher

  class << self
    extend Forwardable

    def_delegators :configuration, :host, :auth_token

    attr_writer :configuration

		def configuration
			@configuration ||= Publisher::Configuration.new
		end

		def configure
			yield(configuration)
		end

    def publish(channel, data)
      message = {channel: channel, data: data}.merge(ext: {auth_token: auth_token}).to_json

      Publisher::Request.new(:post, host, {}, {message: message}, {}).call
    end
  end
end

require 'forwardable'
require 'publisher/version'
require 'publisher/errors'
require 'publisher/configuration'
require 'publisher/request'
require 'publisher/middleware'
require 'publisher/connection'
require 'publisher/view_helpers'
