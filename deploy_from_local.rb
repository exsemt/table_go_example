#!/usr/bin/env ruby
# frozen_string_literal: true

if ARGV.empty?
  puts 'add server as arguments e.g.: "user@server.com"'
  exit
end

server = ARGV[0]
dirname = File.basename(Dir.getwd)
dir = "~/apps/#{dirname}"

puts "'Deploy to server (#{server}:#{dir})...'"

puts '  create folders...'
`ssh #{server} "mkdir -p #{dir}"`

puts '  docker-compose down ...'
`ssh #{server} "cd #{dir}; docker-compose -f docker-compose.prod.yml down"`

if ARGV[1] == 'down'
  puts 'finish'
  exit
end

puts '  copy files...'
`scp docker-compose.prod.yml #{server}:#{dir}`

puts '  docker-compose pull...'
`ssh #{server} "cd #{dir}; docker-compose -f docker-compose.prod.yml pull"`

puts '  docker-compose up -d...'
`ssh #{server} "cd #{dir}; docker-compose -f docker-compose.prod.yml up -d"`

puts 'finish'
