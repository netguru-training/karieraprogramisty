# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:content) { |n| 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'}
  factory :post do
    user
    content
  end
end
