require "codeclimate-test-reporter"
CodeClimate::TestReporter.start if ENV['CODECLIMATE_REPO_TOKEN']

require 'minitest/autorun'
require 'minitest/pride'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'account_books'

require_relative 'database_cleaner_helper'
