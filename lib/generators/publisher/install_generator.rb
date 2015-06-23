module Publisher
	module Generators
		class InstallGenerator < Rails::Generators::Base
			source_root File.expand_path("../../templates", __FILE__)

			def copy_initializer
				template "publisher.yml.example", "config/publisher.yml.example"
			end

		end
	end
end
