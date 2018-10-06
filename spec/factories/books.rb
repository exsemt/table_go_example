# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { 'MyString' }
    isbn { 'MyString' }
    pages { 200 }
    edition { 1000 }
    price { '9.99' }
    release_date { '2013-10-06' }
    publisher_id { 1 }
  end
end
