# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    first_name "MyString"
    last_name "MyString"
    birthday "2013-10-06"
    email "MyString"
    phone "MyString"
  end
end
