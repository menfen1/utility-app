#!/usr/bin/env bash
# exit on error
# this is a  build file for the render app
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:seed
