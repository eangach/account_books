require "codeclimate-test-reporter"
CodeClimate::TestReporter.start if ENV['CODECLIMATE_REPO_TOKEN']

require 'minitest/autorun'
require 'minitest/pride'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'account_books'

require 'database_cleaner'

DatabaseCleaner.strategy = :transaction

class Minitest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
