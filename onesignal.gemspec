# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onesignal/version'

Gem::Specification.new do |spec|
  spec.name          = 'onesignal'
  spec.version       = OneSignal::VERSION
  spec.authors       = ['Bastian Bartmann']
  spec.email         = ['babartmann@gmail.com']

  spec.summary       = 'Simple wrapper for the OneSignal API.'
  spec.description   = 'Simple wrapper for the OneSignal API.'
  spec.homepage      = 'https://github.com/coding-chimp/onesignal'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'webmock', '~> 1.24'
end
