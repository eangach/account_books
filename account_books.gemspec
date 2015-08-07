# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'account_books/version'

Gem::Specification.new do |spec|
  spec.name          = 'account_books'
  spec.version       = AccountBooks::VERSION
  spec.authors       = ['Thomas Behrndt']
  spec.email         = ['thomas.behrndt@me.com']

  spec.summary       = %q{A Ruby module for Account Books.}
  spec.description   = %q{This is an early work in progress. In this version, it only creates accounts.}
  spec.homepage      = 'https://github.com/eangach/account_books'
  spec.licenses      = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'data_mapper'
  spec.add_runtime_dependency 'dm-sqlite-adapter'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
