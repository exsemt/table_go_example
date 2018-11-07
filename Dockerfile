FROM ruby:2.5.1

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists /var/lib/apt /var/lib/dpkg /var/lib/cache /var/lib/log

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
