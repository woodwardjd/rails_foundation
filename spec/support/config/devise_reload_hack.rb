# Prevent Devise from loading models super early with its route hacks.
# https://github.com/timcharper/spork/wiki/Spork.trap_method-Jujutsu
# 
# This must be done before requiring the environment.
require 'rails/application'
Spork.trap_method(Rails::Application::RoutesReloader, :reload!)