# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/oraclebmc_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-oraclebmc'
  spec.version       = Kitchen::Driver::OBMC_VERSION
  spec.authors       = ['Stephen Pearson']
  spec.email         = ['stevieweavie@gmail.com']
  spec.description   = 'A Test Kitchen Driver for Oracle BMC'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache-2.0'

  # rubocop:disable SpecialGlobalVars
  spec.files         = `git ls-files`.split($/)
  # rubocop:enable SpecialGlobalVars
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '~> 1.15.0'
  spec.add_dependency 'oraclebmc', '~> 1.1.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
end
