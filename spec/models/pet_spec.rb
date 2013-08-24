require 'spec_helper'

describe Pet do
  let(:pet) { FactoryGirl.create(:pet) }

  it "is valid" do
    expect(pet).to be_valid
  end

  it "is invalid without a character" do
    pet.character = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without a first_name" do
    pet.first_name = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without hit points" do
    pet.hp = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without a level" do
    pet.level = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without experience" do
    pet.experience = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without strength" do
    pet.strength = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without luck" do
    pet.luck = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without intelligence" do
    pet.intelligence = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without sex appeal" do
    pet.sex_appeal = nil
    expect(pet).to_not be_valid
  end
end
