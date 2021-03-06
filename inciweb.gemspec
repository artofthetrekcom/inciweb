# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "inciweb/version"

Gem::Specification.new do |spec|
  spec.name          = "inciweb"
  spec.version       = Inciweb::VERSION
  spec.authors       = ["Abu Nashir", "Art of the Trek"]
  spec.email         = ["abunashir@gmail.com", "info@artofthetrek.com"]

  spec.summary       = "The Ruby Interface to the InciWeb"
  spec.description   = "The Ruby Interface to the InciWeb"
  spec.homepage      = "https://github.com/artofthetrekcom/inciweb"
  spec.license       = "MIT"

  spec.require_paths = ["lib"]
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.2")

  spec.add_dependency "activesupport", "~> 5.2.5"
  spec.add_dependency "nokogiri", "~> 1.6"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0.3"
  spec.add_development_dependency "rspec-rails", "~> 5.0.1"
  spec.add_development_dependency "webmock", "~> 3.12.2"
end
