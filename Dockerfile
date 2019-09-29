FROM ruby:2.6-alpine

RUN apk add --update build-base
COPY lib /action/lib
RUN gem install bundler
ENTRYPOINT ["/action/lib/entrypoint.sh"]
