# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'argon/rubocop/version'

Gem::Specification.new do |spec|
  spec.name = 'argon-rubocop'
  spec.version = Argon::Rubocop::VERSION
  spec.authors = ['John Cech']
  spec.email = ['john@planetargon.com']
  spec.summary = 'Rubocop rules for Planet Argon'
  spec.description = 'The argon-rubocop gem provides Rubocop custom rules managed by our developers'
  spec.homepage = ''

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency "rubocop", "~> 0.79.0"
  spec.required_ruby_version = '>= 2.3.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.0"
end
