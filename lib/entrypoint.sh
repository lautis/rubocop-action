#!/bin/sh

set -e

bundle install

bundle exec ruby /action/lib/index.rb
