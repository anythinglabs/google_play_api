# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_play_api/version'

Gem::Specification.new do |spec|
  spec.name          = "google_play_api"
  spec.version       = GooglePlayApi::VERSION
  spec.authors       = ["Rob Heittman"]
  spec.email         = ["rob.heittman@solertium.com"]
  spec.description   = %q{Access Google Play API via protobufs}
  spec.homepage      = "https://www.github.com/appygram/google_play_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
