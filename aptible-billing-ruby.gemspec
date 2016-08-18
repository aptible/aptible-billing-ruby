# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/billing/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-billing'
  spec.version       = Aptible::Billing::VERSION
  spec.authors       = ['Blake Pettersson']
  spec.email         = ['blake@aptible.com']
  spec.description   = 'Ruby client for billing.aptible.com'
  spec.summary       = 'Ruby client for billing.aptible.com'
  spec.homepage      = 'https://github.com/aptible/aptible-billing-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(%r{/^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'stripe', '>= 1.13.0'
  spec.add_dependency 'activesupport', '~> 4.0'
  spec.add_dependency 'aptible-resource', '>= 0.3.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'aptible-tasks'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rspec'
end
