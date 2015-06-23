# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'publisher/version'

Gem::Specification.new do |spec|
  spec.name          = "publisher"
  spec.version       = Publisher::VERSION
  spec.authors       = ["issac"]
  spec.email         = ["issaclau3@gmail.com"]
  spec.summary       = %q{Publish message to faye by http.}
  spec.description   = %q{Publish message to faye by http.}
  spec.homepage      = "http://github.com/anhuiliujun"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.0"
  spec.add_dependency "faraday"
  spec.add_dependency "typhoeus"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
