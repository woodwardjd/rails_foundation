# Singlebrook Rails Template

## Project Setup

### Replace Placeholders

After cloning, find and replace the following items **project-wide**, including in dotfiles:

- RailsFoundation -> The name of your application.

    grep -e RailsFoundation -r -l . | xargs sed -i '' -e 's/RailsFoundation/YourAppName/g'

### Setup Databases

1. `cp config/database.example.yml config/database.yml`
2. Edit it to change `rails_foundation` to the name of your app.
3. `bundle exec rake db:create`

### Destroy These Instructions

Delete everything from here on up!

# RailsFoundation

* [Dev Setup](doc/dev_setup.md)