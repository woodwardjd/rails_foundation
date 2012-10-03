require 'rubygems'
require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  ENV["RAILS_ENV"] ||= 'test'

  require File.expand_path("../support/config/devise_reload_hack", __FILE__)
  require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  require 'rspec/autorun'
  require 'capybara/rspec'
  require 'draper/test/rspec_integration'
  require 'turnip/capybara'

  RSpec.configure do |config|
    # If true, the base class of anonymous controllers will be inferred
    # automatically. This will be the default behavior in future versions of
    # rspec-rails.
    config.infer_base_class_for_anonymous_controllers = false

    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true

    config.treat_symbols_as_metadata_keys_with_true_values = true
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  Dir.glob("spec/acceptance/**/*steps.rb") { |f| load f, true }

  # Require test helper modules.
  RSpec.configure do |config|
    config.include APPNAME::TestHelpers
  end

  # Reload routes.
  require "#{Rails.root}/config/routes"
end
