# Setting up your development environment

## Install project and ruby gems

1. Install dependencies
  * Install QT for capybara-webkit (whichis used in integration tests). If you're on OS X and have Homebrew, `brew install qt` will do it.
2. `git clone git@github.com:[owner]/[project].git --recursive`
3. `cd [project]; bundle install`

## Setup Databases

1. `cp config/database.example.yml config/database.yml`
2. Edit it to change `rails_foundation` to the name of your app.
3. `bundle exec rake db:create`

## Setup Secrets

1. `cp .env.example .env`
2. Use `bundle exec rake secret` to generate keys for, eg.
  * DEVISE_SECRET_KEY
  * RAILS_SECRET_KEY_BASE
3. Paste the generated keys into `.env`

## Running tests

If you've done the above steps correctly, your test suite should be green. Run it with:

`bundle exec guard -c`

Guard will run all of your tests, then patiently watch your files for changes and run the appropriate tests. You should do this each time you start coding.

If you're changing branches and doing merges, you may want to ask guard to pause its watching with `p [return]` to avoid a lot of test running and transient failures, but make sure to run all of the tests (`[return]`)before you push to origin!

## Starting the application

1. `foreman start`
2. Visit http://[project].lvh.me:5000
