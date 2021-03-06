source 'https://rubygems.org'
ruby '2.1.1'

# Core Frameworks
# ============================

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1'

# Use PostgreSQL as the database for Active Record
gem 'pg'

# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Authentication
gem 'devise', '~> 3.1'


# App Servers
# ============================

# Use unicorn as the app server
gem 'unicorn'


# DSLs for happier coding
# ============================

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Slim templates
gem 'slim-rails'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


# Asset Management
# ============================

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# CSS Libraries
# ============================

# Normalize stylesheet to make all browsers style things the same
gem 'normalize-rails'

# Javascript Libraries
# ============================

# Use jquery as the JavaScript library
gem 'jquery-rails'

# `js-routes` - Generates javascript file that defines all Rails named
# routes as javascript helpers. https://github.com/railsware/js-routes
gem 'js-routes'


# OO Programming Support
# ============================

# Decorators: an object-oriented layer of presentation logic
gem 'draper', '~> 1.0'


# Deployment Support
# ============================

# Environment-specific configuration, including secrets.
# Works automatically with Foreman.
# Works alongside Rails' secrets.yml, which loads
# env vars into Rails.application.secrets
gem 'dotenv-rails'

# Emails us error reports
gem 'exception_notification'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  # Run tests quickly by keeping app loaded in memory
  gem "spring"
  # General-purpose file watcher
  gem 'guard'
  # Run tests automatically
  gem 'guard-minitest'
  # Run database migrations automatically
  gem 'guard-migrate'
  # Turn off the asset pipeline log
  gem 'quiet_assets'
end

group :test do
  # Integrate minitest-spec with activesupport test classes
  gem 'minitest-spec-rails'

  # Prettier test output
  gem 'minitest-reporters'

  # Mocking and stubbing
  # require postponed until after the test library in test_helper.rb
  gem "mocha", :require => false
  # Database cleanup
  gem 'database_cleaner'

  ###################
  # The following are for integration testing. They are not require'd by default
  # because requiring them slows our non-integration tests. They will be manually
  # require'd when needed.

  # Headless browser
  gem 'capybara-webkit', require: false
end

group :development, :test do
  # If you want to use factories outside tests, eg. in seeds,
  # just `require factory_girl`.  Don't move the gem outside the
  # test group.  It's a waste of memory to load it in production.
  gem 'factory_girl_rails'

  # Inspect running code
  gem 'pry'
  # ...even when running in foreman
  gem 'pry-remote'
end
