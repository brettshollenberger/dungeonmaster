require 'spec_helper'

describe CharacterMoves do
  let(:character_move) { FactoryGirl.create(:character_move) }

  before :each do
    @character = FactoryGirl.create(:character, id: 1)
    @move = FactoryGirl.create(:move, id: 1)
  end
  
  it "is valid" do
    expect(character_move).to be_valid
  end
end
