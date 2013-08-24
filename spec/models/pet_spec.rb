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

  it "is invalid without a last_name" do
    pet.last_name = nil
    expect(pet).to_not be_valid
  end

  it "is invalid without hit points" do
    pet.hp = nil
    expect(pet).to_not be_valid
  end
end
