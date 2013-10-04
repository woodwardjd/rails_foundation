# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'dotenv/tasks'

RailsFoundation::Application.load_tasks

# Simple example of how to use dotenv in a rake task
task :check_dotenv => :dotenv do
	puts ENV.fetch('FOO')
end
