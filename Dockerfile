FROM ruby:2.7.2-alpine

RUN apk add --update alpine-sdk
RUN apk add --no-cache nano bash nodejs yarn sqlite sqlite-dev sqlite-libs\
  && rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem install bundler:2.2.6
# BUG: https://github.com/sass/sassc-ruby/issues/146
#RUN bundle check || gem install sassc -- --disable-march-tune-native
RUN bundle check || bundle install
COPY . /app
