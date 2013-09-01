require 'spec_helper'

describe Move do
  let(:move) { FactoryGirl.create(:move) }

  it "is valid" do
    expect(move).to be_valid
  end

  it "is not valid without a frequency" do
    move.frequency = nil
    expect(move).to_not be_valid
  end

  it "is not valid without a title" do
    move.title = nil
    expect(move).to_not be_valid
  end

  it "is not valid without a range" do
    move.range = nil
    expect(move).to_not be_valid
  end
end
