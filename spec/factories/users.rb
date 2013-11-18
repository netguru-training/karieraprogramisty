# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:login) { |n| "login_#{n}" }
  sequence(:name) { |n| "User Name #{n}" }
  sequence(:api_token) { SecureRandom.hex}
  
  factory :user do
    login
    name
    api_token
  end
end
