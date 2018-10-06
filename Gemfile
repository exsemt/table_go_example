# frozen_string_literal: true

source 'https://rubygems.org'

gem 'haml-rails'
gem 'newrelic_rpm'
gem 'rails', '5.2.1'

gem 'faker'
gem 'sqlite3'

gem 'coffee-rails'
gem 'jquery-rails'
gem 'sass-rails'
gem 'turbolinks'
gem 'uglifier'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

gem 'bootstrap-sass', '>= 3.3'
gem 'table_go', '0.2.6'
gem 'will_paginate-bootstrap'

gem 'puma'

group :development do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
end

group :development, :test do
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'shoulda-matchers'
end
