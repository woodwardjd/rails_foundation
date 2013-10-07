# Setting up your development environment

1. Install dependencies
  * Install QT for capybara-webkit (whichis used in integration tests). If you're on OS X and have Homebrew, `brew install qt` will do it.
2. `git clone git@github.com:[owner]/[project].git --recursive`
3. `cd [project]; bundle install`
4. `cp config/database.example.yml config/database.yml` and edit `config/database.yml` as needed.
5. `bundle exec rake db:create`
6. `bundle exec rake test` and verify that everything is green!

# Running tests

`bundle exec guard -c`

Guard will run all of your tests, then patiently watch your files for changes and run the appropriate tests.

# Starting the application

If foreman is installed:

1. `foreman start`
2. Visit http://[project].lvh.me:5000

Otherwise:

1. `bundle exec rails s`
2. Visit http://[project].lvh.me:3000