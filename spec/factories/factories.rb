FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "dungeonmaster#{n}" }
    sequence(:email)    { |n| "dungeonmaster#{n}@gmail.com" }
    password "foobar29"
  end
end
