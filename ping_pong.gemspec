# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ping_pong/version'

Gem::Specification.new do |spec|
  spec.name          = "ping_pong"
  spec.version       = PingPong::VERSION
  spec.authors       = ["Jon Rowe"]
  spec.email         = ["hello@jonrowe.co.uk"]
  spec.description   = %q{Ping responder}
  spec.summary       = %q{Ping responder, sets up a route that will respond to a ping with a pong}
  spec.homepage      = "https://github.com/JonRowe/ping_pong"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  if RUBY_VERSION.to_f <= 2.2
    spec.add_development_dependency "bundler", "~> 1.3"
  else
    spec.add_development_dependency "bundler", "~> 2.1"
  end

  if RUBY_VERSION.to_f > 1.9
    spec.add_development_dependency "rake", '~> 11.0'
  else
    spec.add_development_dependency "rake", '~> 10.0'
  end
  spec.add_development_dependency "rspec", '~> 3.4'
end
