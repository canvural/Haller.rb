# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haller/version'

Gem::Specification.new do |spec|
  spec.name          = "haller"
  spec.version       = Haller::VERSION
  spec.authors       = ["kobayakawa"]
  spec.email         = ["can9119@gmail.com"]
  spec.summary       = %q{@sercaneraslan'ın Haller.js'inin Ruby portu}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'unicode_utils'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
