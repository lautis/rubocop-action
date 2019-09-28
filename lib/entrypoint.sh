#!/bin/sh

set -e

COMMAND="ruby"
if [ -f Gemfile ]; then
  COMMAND="bundle exec ruby"
  bundle install
else
  gem install rubocop
fi

$COMMAND /action/lib/index.rb
