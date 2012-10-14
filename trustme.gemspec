# -*- encoding: utf-8 -*-

require File.expand_path('../lib/trustme/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "trustme"
  gem.version       = Trustme::VERSION
  gem.summary       = %q{trust me!}
  gem.description   = %q{trust me!}
  gem.license       = "MIT"
  gem.authors       = ["basyura"]
  gem.email         = "basyura@gmail.com"
  gem.homepage      = "https://rubygems.org/gems/trustme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
