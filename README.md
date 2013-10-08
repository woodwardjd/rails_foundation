# Singlebrook Rails Template

## Project Setup

### Replace Placeholders

#### Application Name

After cloning, find and replace the following items **project-wide**, including in dotfiles:

- RailsFoundation -> The name of your application.

    grep -e RailsFoundation -r -l . | xargs sed -i '' -e 's/RailsFoundation/YourAppName/g'

#### Default Email From Address

Replace `please-change-me@example.com` in `config/initializers/devise.rb`.

### Setup Databases

1. `cp config/database.example.yml config/database.yml`
2. Edit it to change `rails_foundation` to the name of your app.
3. `bundle exec rake db:create`

### Setup Secrets

1. `cp .env.example .env`
2. `bin/generate_devise_key.rb`
3. Paste the generated key into `.env` as your DEVISE_SECRET_KEY

### Destroy These Instructions

Delete everything from here on up!

# RailsFoundation

## General Information

* [Overview](doc/overview.md)
* [Glossary](doc/glossary.md)

## Developing

* [Dev Setup](doc/dev_setup.md)
* [Branching / Workflow](doc/branching_and_workflow.md)
* [Hosting](doc/hosting.md)

## Procedures

* [Procedures](doc/procedures)

## Topics / Subsystems

* [Topics](doc/topics)
