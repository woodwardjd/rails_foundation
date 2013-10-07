source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use PostgreSQL as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Slim templates
gem 'slim-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# App-specific configuration, including secrets
# dotenv is preferable to secretive because it works with
# foreman, and has no dependencies.
gem 'dotenv'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  # Inspect running code
  gem 'pry'

  # Run tests quickly by keeping app loaded in memory
  gem 'spork-rails'
  gem 'spork-minitest'

  # General-purpose file watcher
  gem 'guard'
  # Run tests automatically
  gem 'guard-minitest'
  # Integrate Guard and Spork
  gem 'guard-spork'
  # Run database migrations automatically
  gem 'guard-migrate'
end

group :test do
  gem 'minitest-reporters'

  # Mocking and stubbing
  # https://github.com/freerange/mocha
  gem "mocha", :require => false
end

group :development, :test do
  # If you want to use factories outside tests, eg. in seeds,
  # just `require factory_girl`.  Don't move the gem outside the
  # test group.  It's a waste of memory to load it in production.
  gem 'factory_girl_rails'
end
