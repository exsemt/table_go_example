# frozen_string_literal: true

set :rails_env, 'production'
set :application, 'table_go_example'
set :repo_url, 'git@github.com:exsemt/table_go_example.git'
set :deploy_to, '/var/www/vhosts/exsemt.de/httpdocs/table_go_example'

set :rvm_ruby_version, File.open('.ruby-version', &:readline).chomp
set :keep_releases, 2
set :format_options, truncate: false

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
set :linked_files, %w{db/production.sqlite3}
