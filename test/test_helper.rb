require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  # Boilerplate Rails stuff
  ENV["RAILS_ENV"] ||= "test"
  require File.expand_path('../../config/environment', __FILE__)
  require 'rails/test_help'

  # Provides minitest/spec DSL, automatic running of loaded tests
  require 'minitest/autorun'

  # Improve test output appearance
  require 'minitest/reporters'
  MiniTest::Reporters.use! MiniTest::Reporters::ProgressReporter.new

  class MiniTest::Spec
    # I think this gives us support for the before/after methods
    include ActiveSupport::Testing::SetupAndTeardown

    # Allows us to use build/create/build_stubbed without the "FactoryGirl." prefix
    include FactoryGirl::Syntax::Methods

    # Don't run tests when migrations are pending
    ActiveRecord::Migration.check_pending!
  end

  # class ControllerSpec < MiniTest::Spec
  #   include Rails.application.routes.url_helpers
  #   include ActionController::TestCase::Behavior

  #   before do
  #     @routes = Rails.application.routes
  #   end
  # end

  # # Test subjects ending with 'Controller' are treated as functional tests
  # #   e.g. describe TestController do ...
  # MiniTest::Spec.register_spec_type( /Controller$/, ControllerSpec )

  # "load Mocha after loading the relevant test library"
  # https://github.com/freerange/mocha
  require "mocha/setup"
end

Spork.each_run do
  # This code will be run each time you run your specs.
end
