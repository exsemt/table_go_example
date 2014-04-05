source 'https://rubygems.org'

gem 'rails', '4.1.0.rc2' #'4.0.2'
gem "haml-rails", "~> 0.5"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

gem 'sass-rails', '>= 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '>= 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

gem 'table_go', '0.2.6'
gem "will_paginate-bootstrap"
gem "bootstrap-sass", '>= 3.1.1.0'

gem 'faker'

gem 'newrelic_rpm'

# Deploy with Capistrano
gem 'capistrano'#, '2.11.2'
gem 'rvm-capistrano'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'puma'
end

group :development, :test do
  #gem 'debugger'
  gem 'pry-rails'
  gem 'pry-doc'
  gem "rspec-rails"
end

group :test do
  gem 'shoulda-matchers'
  gem "database_cleaner", '< 1.1.0' # bug: https://github.com/bmabey/database_cleaner/issues/224
  gem "factory_girl_rails"
end