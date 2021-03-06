# Singlebrook Rails Template

## Project Setup

### Replace Placeholders

After cloning this repo, you'll need to replace some placeholders.

#### Owner and Project Name

Replace all occurrences of `[owner]` and `[project]`.

#### Application Name

Find and replace the following items **project-wide**, including in dotfiles:

- RailsFoundation -> The name of your application.

    grep -e RailsFoundation -r -l . | xargs sed -i '' -e 's/RailsFoundation/YourAppName/g'

- rails_foundation -> The variable-named version of your application's name.

    grep -e rails_foundation -r -l . | xargs sed -i '' -e 's/rails_foundation/your_app_name/g'


#### Default Email Addresses

Replace `please-change-me@example.com` in `config/initializers/devise.rb`.

Replace email addresses in the `ExceptionNotification` setup in `config/environments/production.rb`.

#### Fill in holes in docs

Search for `FILL ME IN` and fill 'em in!

#### Set up your local dev env

Follow additional setup instructions in [dev_setup.md](doc/dev_setup.md).

#### Enable serving of static assets

If you're going to host on Heroku, change `config.serve_static_assets` to `true` in `/config/environments/production.rb`.
If you don't do this, your stylesheets and JS files will 404.

Or, plan to use an asset host.

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
