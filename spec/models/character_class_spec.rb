require 'spec_helper'

describe CharacterClass do
  let(:character_class) { FactoryGirl.create(:character_class) }

  it "is valid" do
    expect(character_class).to be_valid
  end

end
