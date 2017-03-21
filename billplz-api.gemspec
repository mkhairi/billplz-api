# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'billplz/version'

Gem::Specification.new do |spec|
  spec.name          = "billplz-api"
  spec.version       = Billplz::VERSION

  spec.summary       = 'Billplz Api Client'
  spec.license       = 'MIT'
  spec.author        = ['mkhairi','fathiabdulrahim']
  spec.email         = ['khairi@labs.my']
  spec.homepage      = 'https://github.com/mkhairi/billplz-api'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "flexirest"
end
