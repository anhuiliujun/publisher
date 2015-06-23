module Publisher
  class Middleware

    def self.default
      proc do |builder|
        builder.adapter :typhoeus
      end
    end

  end
end
