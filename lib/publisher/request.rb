require_relative 'connection'

module Publisher
  class Request
    include Connection

    HTTP_METHODS = [:get, :head, :post, :put, :delete, :patch]

		METHODS_WITH_BODIES = [:post, :put, :patch]

		attr_reader :action, :path, :params, :options, :headers

		def initialize(action, path, params = {}, options = {}, headers = {})
			@action = action.to_sym
			
			%W{path params options headers}.each do |field|
				instance_variable_set("@#{field}", instance_eval(field))
			end
		end

		def call
			raise Publisher::ArgumentError unless HTTP_METHODS.include?(action)

			response = connection.send(action) do |request|
				request.url path
				request.headers.merge!(headers)
				
				case action
				when *(HTTP_METHODS - METHODS_WITH_BODIES)
					request.params = params if params.present?	
				when *METHODS_WITH_BODIES
					request.body = options unless options.blank?
				end
			end

			response.body
		end
  end
end
