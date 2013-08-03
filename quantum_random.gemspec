# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quantum_random/version'

Gem::Specification.new do |gem|
  gem.name          = "quantum_random"
  gem.version       = QuantumRandom::VERSION
  gem.authors       = ["Ilya Scharrenbroich"]
  gem.email         = ["$EMAIL"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  # Dependencies:
  gem.add_dependency 'httparty'
  gem.add_dependency 'hashie'
  
  # Development dependencies:
  gem.add_development_dependency 'debugger'
  gem.add_development_dependency 'rspec'
end
