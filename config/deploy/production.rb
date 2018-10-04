# frozen_string_literal: true

server 'exsemt.de', user: 'exsemt', roles: %w[app db web], my_property: :my_value

# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, ENV['BRANCH'] || ENV['TAG'] || 'master'
