Sample for Heroku
=========

js-routes requires that we initialize the environment during asset precompilation. Heroku normally doesn't allow access to the database at this stage, which causes asset precompilation to crash. Heroku Labs' [user-env-compile](https://devcenter.heroku.com/articles/labs-user-env-compile) gives us access to the database.

    heroku labs:enable user-env-compile

TurboSprockets buildpack enables caching of compiled assets between deploys, which lets us deploy much faster.

    heroku config:add BUILDPACK_URL=https://github.com/ndbroadbent/heroku-buildpack-turbo-sprockets



Sample for Rackspace
=========

Initial manual steps
----------------------

### first admin user

* `adduser [you]`
* `addgroup [you] sudo`
* `sudo su [you]`
* add your public key to your ~/.ssh/authorized_keys
* set permissions:
  * chmod -R og-rwx ~/.ssh

### password-less sudo

* `sudo vi /etc/sudoers.d/passwordless` to contain the following:
      # Allow members of group sudo to execute any command with no password
      %sudo   ALL=(ALL) NOPASSWD: ALL
* `sudo chmod 440 /etc/sudoers.d/passwordless`

Install software
----------------------

This will ask a question or two, including the root password for MySQL. It will also pause
to let you grab the deploy user's SSH key, which you should add to the project's deploy keys on Github.

* `cap [level] deploy:install -s user=[sudoer_user]` (Note that sudoer_user must have passwordless sudo available.)

Configure software
----------------------
These numbers are for a production server with 8GB of RAM. For a server with less RAM, adjust accordingly.

### Apache

Note that hostnames in here are for production. Prepend "stage." for staging.

    sudo a2dissite default

    echo "ServerName localhost
    " | sudo tee /etc/apache2/sites-available/default-name
    sudo a2ensite default-name

    echo "<VirtualHost *:80>
    ServerName www.rails-foundation.com
    ServerAlias rails-foundation.com
    DocumentRoot /srv/www/rails-foundation/current/public
    PassengerPreStart http://www.rails-foundation.com/
    </VirtualHost>" | sudo tee /etc/apache2/sites-available/1-rails-foundation
    sudo a2ensite 1-rails-foundation
    sudo service apache2 graceful

### Passenger

    echo "
      # How many instances total?
      PassengerMaxPoolSize 14
      # Each server runs 3 apps, and each app should leave at least one slot for the other two,
      # so this should be two less than PassengerMaxPoolSize.
      PassengerMaxInstancesPerApp 12
      # Always keep instance one of each app running
      PassengerMinInstances 1
      # Don't shut idle instances down
      PassengerPoolIdleTime 0
      # WARNING: This can break other Apache modules
      PassengerHighPerformance on
    " | sudo tee /etc/apache2/mods-available/passenger.conf
    sudo a2enmod passenger
    sudo service apache2 graceful

### MySQL

    # Set the amount of memory that MySQL will use
    echo "[mysqld]
    innodb_buffer_pool_size = 2000M
    " | sudo tee /etc/mysql/conf.d/memory.cnf
    sudo service mysql restart

    # Deploy user
    mysql -u root -p -e "create user 'deploy'@'localhost' identified by 'PASSWORD';"
    mysql -u root -p -e "grant all privileges on rails-foundation_production.* to deploy@localhost;"

    # Load database
    mysql -u root -p -e "create database rails-foundation_production;"
    cat rails-foundation_production.dmp | mysql -u deploy -p rails-foundation_production

### PostgreSQL

    # Enable Postgres to request a large shared memory segment
    sudo sysctl -w kernel.shmmax=572530688
    echo "kernel.shmmax=572530688" | sudo tee -a /etc/sysctl.conf
    # Set the amount of main memory that Postgres will use
    sudo sed -ibak 's/shared_buffers = 24MB/shared_buffers = 512MB/' /etc/postgresql/9.2/main/postgresql.conf
    sudo service postgresql restart

Create deployment dirs
--------------------------
`cap [level] deploy:setup`

Database configuration
--------------------------

    sudo -u deploy mkdir -p /srv/www/rails-foundation/shared/config

Put the following into /srv/www/rails-foundation/shared/config/database.yml:

    production:
      adapter: mysql
      database: rails-foundation_production
      host: localhost
      username: deploy
      password: PASSWORD
      pool: 5
      timeout: 5000
