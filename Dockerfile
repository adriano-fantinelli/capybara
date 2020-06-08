FROM ruby:2.5-alpine

RUN apk update && apk add --virtual build-dependencies build-base gcc wget

WORKDIR /home/vv/

COPY . .

RUN gem install bundler

RUN bundle install
