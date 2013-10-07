Spork.prefork do

  require 'test_helper'
  require 'capybara/rails'
  require 'capybara-webkit'

  class IntegrationSpec < MiniTest::Spec
    include Rails.application.routes.url_helpers

    # Provides things like "visit", "page", "body", etc
    include Capybara::DSL

    # Use a headless browser that support Javascript
    Capybara.current_driver = :webkit

    # We're not sure why we have to do this for Capybara
    Capybara.app = RailsFoundation::Application

    # Integration tests can't use database transactions because queries may
    # be running via multiple database connections.
    DatabaseCleaner.strategy = :truncation
  end

  # Test subjects ending with 'integration' are treated as integration tests
  MiniTest::Spec.register_spec_type( /integration$/i, IntegrationSpec )
end

Spork.each_run do
  # This code will be run each time you run your specs.

end
