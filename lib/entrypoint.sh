#!/bin/sh

set -e

if [ ! -z ${INPUT_GEMFILE+x} ]; then
  export BUNDLE_GEMFILE=$INPUT_GEMFILE
fi

COMMAND="ruby"
if [ ! -z ${BUNDLE_GEMFILE} ] || [ -f Gemfile ]; then
  COMMAND="bundle exec ruby"
  bundle install
elif [ -z "$INPUT_RESULTS" ]; then
  gem install rubocop
fi

$COMMAND /action/lib/index.rb
