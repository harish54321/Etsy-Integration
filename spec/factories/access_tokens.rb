# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :access_token do
    token "MyString"
    secret "MyString"
  end
end
