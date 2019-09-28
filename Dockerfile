FROM ruby:2.6

COPY lib /action/lib
RUN gem install bundler
ENTRYPOINT ["/action/lib/entrypoint.sh"]
