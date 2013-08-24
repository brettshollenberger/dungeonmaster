FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "dungeonmaster#{n}" }
    sequence(:email)    { |n| "dungeonmaster#{n}@gmail.com" }
    password            "foobar29"
  end

  factory :character do
    first_name   "Dungeon"
    last_name    "Master"
    hp           6
    level        1
    experience   0
    height       6
    weight       200
    strength     5
    luck         10
    intelligence 10
    sex_appeal   15
    gold         500
    user
    character_class
  end

  factory :character_class do
    name "Elf"
  end

  factory :pet do
    first_name   "Pet"
    last_name    "of Doom"
    hp           6
    level        1
    experience   0
    strength     5
    luck         10
    intelligence 10
    sex_appeal   10
    character
  end
end
