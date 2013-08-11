FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "dungeonmaster#{n}" }
    sequence(:email)    { |n| "dungeonmaster#{n}@gmail.com" }
    password "foobar29"
  end

  factory :character do
    first_name "Dungeon"
    last_name "Master"
    level 1
    experience 1
    user
    character_class
  end

  factory :character_class do
    name "Elf"
  end
end
