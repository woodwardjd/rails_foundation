source :rubygems

gem 'rails', '3.2.3'

# Database
gem 'pg', '~> 0.13.2'

# Authentication
gem 'devise', '~> 2.0.4'

# JavaScript Frameworks
gem 'jquery-rails', '>= 2.0.2'

# Decorators
gem 'draper', '~> 0.11.1'

# Image uploading and processing.
gem 'dragonfly',  '~> 0.9.10'
gem 'fog',        '~> 1.3.1'
gem 'rack-cache', '~> 1.2', require: 'rack/cache'

# API Keys & Secrets
gem 'secrets', git: "https://github.com/singlebrook/secrets"

# Include FactoryGirl in all environments in order
# to use factories in seeds.rb.
gem 'factory_girl', '~> 3.0.0'

# Fake data.
gem 'ffaker', '~> 1.14.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :development do
  gem 'guard',       '~> 1.0.1'
  gem 'guard-spork', '~> 0.6.1'
  gem 'guard-rspec', '~> 0.7.0'
  gem 'guard-migrate'
end

group :development, :test do
  gem 'sqlite3',     '>= 1.3.6'
  gem 'pry',         '>= 0.9.8'
  gem 'rspec-rails', '~> 2.9.0'
end

group :test do
  gem 'spork-rails',        '~> 3.2.0'
  gem 'shoulda-matchers',   '~> 1.1.0'
  gem 'turnip',             '>= 0.3.0'
  gem 'capybara',           '>= 1.1.2'
  gem 'capybara-webkit',    '>= 0.11.0'
  gem 'database_cleaner',   '>= 0.7.2'
  gem 'factory_girl_rails', '~> 3.0.0'
  gem 'launchy',            '>= 2.1.0'
  gem 'vcr',                '~> 2.0.1'
  gem 'webmock',            '~> 1.8.6'
end