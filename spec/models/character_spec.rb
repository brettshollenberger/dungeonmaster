require 'spec_helper'

describe Character do
  let(:character) { FactoryGirl.create(:character) }

  it "is valid" do
    expect(character).to be_valid
  end

  it "is not valid without a class" do
    character.character_class = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a user" do
    character.user = nil
    expect(character).to_not be_valid
  end

  it "is not valid without experience points" do
    character.experience = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a first name" do
    character.first_name = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a last name" do
    character.last_name = nil
    expect(character).to_not be_valid
  end

  it "is not valid without hit points" do
    character.hp = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a level" do
    character.level = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a strength attribute" do
    character.strength = nil
    expect(character).to_not be_valid
  end

  it "is not valid without an intelligence attribute" do
    character.intelligence = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a luck attribute" do
    character.luck = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a sex_appeal attribute" do
    character.sex_appeal = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a height attribute" do
    character.height = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a weight attribute" do
    character.weight = nil
    expect(character).to_not be_valid
  end

  it "is not valid without a gold stash" do
    character.gold = nil
    expect(character).to_not be_valid
  end

  it "only accepts numerical experience" do
    character.experience = "beginner"
    expect(character).to_not be_valid
  end

  it "only accepts numerical levels" do
    character.level = "one"
    expect(character).to_not be_valid
  end

end
