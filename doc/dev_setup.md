# Setting up your development environment

## Install project and ruby gems

1. Install dependencies
  * Install QT for capybara-webkit (whichis used in integration tests). If you're on OS X and have Homebrew, `brew install qt` will do it.
2. `git clone git@github.com:[owner]/[project].git --recursive`
3. `cd [project]; bundle install`

## Setup Secrets

1. `cp .env.example .env`
2. `cp config/secrets.yml.example config/secrets.yml`
3. Use `bundle exec rake secret` to generate keys for, eg.
  * DEVISE_SECRET_KEY
  * RAILS_SECRET_KEY_BASE
4. Paste the generated keys into `.env`
5. Paste the generated secret_key_base into `config/secrets.yml` in the development and test sections.
6. OPTIONAL: deploying to heroku?  Consider adding [heroku_secrets](https://github.com/alexpeattie/heroku_secrets) to the `Gemfile`.  It reads \_SECRET\_{key} into `config/secrets.yml`'s {key} entry, more or less, so you can set secrets using `heroku config:set SECRET_KEY_BASE=asdf`, for instance

## Setup Databases

1. `cp config/database.example.yml config/database.yml`
2. Edit it as necessary for your local database setup.
3. `bundle exec rake db:setup`
4. `bundle exec rake db:test:prepare`

## Running tests

If you've done the above steps correctly, your test suite should be green. Run it with:

`bundle exec guard -c`

Guard will run all of your tests, then patiently watch your files for changes and run the appropriate tests. You should do this each time you start coding.

If you're changing branches and doing merges, you may want to ask guard to pause its watching with `p [return]` to avoid a lot of test running and transient failures, but make sure to run all of the tests (`[return]`)before you push to origin!

## Starting the application

1. `foreman start` (don't forget to `gem install foreman`)
2. Visit http://[project].lvh.me:5000
