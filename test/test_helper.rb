# Boilerplate Rails stuff
ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# Provides minitest/spec DSL, automatic running of loaded tests
require 'minitest/autorun'

# Improve test output appearance
require 'minitest/reporters'
MiniTest::Reporters.use! MiniTest::Reporters::ProgressReporter.new

class ActiveSupport::TestCase
  # I think this gives us support for the before/after methods
  include ActiveSupport::Testing::SetupAndTeardown

  # Allows us to use build/create/build_stubbed without the "FactoryGirl." prefix
  include FactoryGirl::Syntax::Methods

  DatabaseCleaner.strategy = :transaction

  before(:each) do
    DatabaseCleaner.start
  end

  after(:each) do
    DatabaseCleaner.clean
  end
end

class ActionController::TestCase
  include Devise::TestHelpers
end

# "load Mocha after loading the relevant test library"
# https://github.com/freerange/mocha
require "mocha/setup"