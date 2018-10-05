FROM ruby:2.5.1

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    nodejs \
  && apt-get -q clean \
  && rm -rf /var/lib/apt/lists

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000

CMD bundle exec puma -p 3000
