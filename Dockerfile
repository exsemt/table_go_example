FROM ruby:2.5.3

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends nodejs nano \
    nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app
