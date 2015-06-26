# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/invoke/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-invoke'
  spec.version       = Capistrano::Invoke::VERSION
  spec.authors       = ['OZAWA Sakuro']
  spec.email         = ['sakuro@users.noreply.github.com']

  spec.summary       = %q{Reincarnation of good old `cap invoke`}
  spec.description   = %q{This gem provides `invoke` task to Capistrano 3.}
  spec.homepage      = 'https://github.com/sakuro/capistrano-invoke'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.0'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
