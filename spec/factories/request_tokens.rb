# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request_token do
    token "MyString"
    secret "MyString"
  end
end
