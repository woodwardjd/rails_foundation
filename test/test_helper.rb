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

  class ActiveSupport::TestCase
    include FactoryGirl::Syntax::Methods
    ActiveRecord::Migration.check_pending!
  end

end

Spork.each_run do
  # This code will be run each time you run your specs.

end
