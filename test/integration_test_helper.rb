require 'test_helper'
require 'capybara/rails'
require 'capybara-webkit'

class ActionDispatch::IntegrationTest
  # Provides things like "visit", "page", "body", etc
  include Capybara::DSL

  # Use a headless browser that support Javascript
  Capybara.current_driver = :webkit

  # We're not sure why we have to do this for Capybara
  Capybara.app = RailsFoundation::Application

  # Integration tests can't use database transactions because queries may
  # be running via multiple database connections.
  DatabaseCleaner.strategy = :truncation
  self.use_transactional_fixtures = false
end

