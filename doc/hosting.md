# Hosting

This application is hosted at ....

The production hostname is ...

## Setup

### If hosting on Heroku...

js-routes requires that we initialize the environment during asset precompilation. Heroku normally doesn't allow access to the database at this stage, which causes asset precompilation to crash. Heroku Labs' [user-env-compile](https://devcenter.heroku.com/articles/labs-user-env-compile) gives us access to the database.

    heroku labs:enable user-env-compile

TurboSprockets buildpack enables caching of compiled assets between deploys, which lets us deploy much faster.

    heroku config:add BUILDPACK_URL=https://github.com/ndbroadbent/heroku-buildpack-turbo-sprockets

### If hosting elsewhere...

Follow the instructions at https://github.com/singlebrook/capistrano-recipes to build your server.