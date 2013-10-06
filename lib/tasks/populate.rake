namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'faker'

    #[Author, Book, Publisher].each(&:delete_all)

    5.times do
      Publisher.create(
        :name  => Faker::Company.name,
        :place => Faker::Address.city
      )
    end
    publisher_ids = Publisher.ids

    1000.times do
      author = Author.create(
        :first_name => Faker::Name.first_name,
        :last_name  => Faker::Name.last_name,
        :birthday   => rand(Date.new(1950)..Date.new(1990)),
        :email      => Faker::Internet.email,
        :phone      => Faker::PhoneNumber.phone_number
      )
      10.times do
        Book.create(
          :authors      => [author],
          :title        => Faker::Company.name,
          :isbn         => Faker::Number.number(9),
          :pages        => Faker::Number.number(2),
          :edition      => Faker::Number.number(3),
          :price        => [2.99, 4.99, 8.95, 9.95, 19.95, 29.95, 39.95, 49.95, 59.95],
          :release_date => rand(Date.new(1980)..Date.today),
          :publisher_id => publisher_ids.sample
        )
      end
    end
  end
end