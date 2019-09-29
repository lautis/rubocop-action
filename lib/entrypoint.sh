#!/bin/sh

set -e

if [ ! -z ${INPUT_GEMFILE+x} ]; then
  export BUNDLE_GEMFILE=$INPUT_GEMFILE
fi

COMMAND="ruby"
if [ ! -z "$INPUT_RESULTS" ]; then
  : # Do nothing
elif [ ! -z ${BUNDLE_GEMFILE} ] || [ -f Gemfile ]; then
  COMMAND="bundle exec ruby"
  bundle install
else
  gem install rubocop
fi

$COMMAND /action/lib/index.rb
