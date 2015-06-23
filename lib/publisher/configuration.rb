module Publisher
  class Configuration

    def host
      config['faye_url']
    end

    def auth_token
      config['auth_token']
    end

    private
    def file_path
      Rails.root.join("config/publisher.yml")
    end

    def config
      @config || @config = YAML.load_file(file_path)[Rails.env]
    rescue Errno::ENOENT
      raise Publisher::ConfigurationError.new "config rest_client.yml is missing, please install first"
    end

  end
end
