# Singlebrook Rails Template

## Project Setup

### Replace Placeholders

After cloning, find and replace the following items **project-wide**:

- APPNAME: The name of the application module.
- MAILHOST: The host that ActionMailer should send from in production.

### Migrate Database

Set up your `config/database.yml` with your preferred database configuration. Examples are provided in `config/database.yml.example`. 

You can use `sqlite` or `postgres`. `postgres` is recommended to match up with the production environment.

Once you're done configuring, run `rake db:setup`.

### Run Test Specs

Run `bundle exec rspec spec` to run the example specs and make sure everything has been set up properly. You can then remove the example specs if you like by running the following from the root of the project directory:

`rm -r spec/acceptance/developer spec/acceptance/step_definitions/test_steps.rb spec/models/unit_test_spec.rb`

### Setting Secrets

The following keys are required to be set in `config/secrets.yml` before the app will run in production:

- S3_KEY: S3 Key, for use in production environment only.
- S3_SECRET: S3 Secret, for use in production environment only.
- S3_BUCKET: S3 Bucket, for use in production environment only.

## Pre-Set Devise Configuration

Devise is pre-configured using `Manager` as the model. 