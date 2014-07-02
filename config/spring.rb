# What things should Spring watch to know when to restart itself?

# Spring doesn't seem to watch .yml files in config by default.
Spring.watch 'config/database.yml'
Spring.watch 'config/secrets.yml'