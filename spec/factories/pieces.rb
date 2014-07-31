# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    price 1.5
    sold false
    artist nil
    name "MyString"
  end
end
