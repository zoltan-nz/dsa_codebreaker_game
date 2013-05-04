# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dsa_codebreaker_game/version'

Gem::Specification.new do |spec|
  spec.name          = "dsa_codebreaker_game"
  spec.version       = DsaCodebreakerGame::VERSION
  spec.authors       = ["Zoltan Debre"]
  spec.email         = [""]
  spec.description   = %q{A variation on MasterMind game}
  spec.summary       = %q{This is a code breaker game with simplified rules. A coding challenge from Digital Skills Academy.}
  spec.homepage      = "https://github.com/szines/dsa_codebreaker_game"
  spec.license       = "MIT/DIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rb-readline'
  spec.add_development_dependency 'rspec'
end