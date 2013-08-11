require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }

  it "is valid" do
    expect(user).to be_valid
  end

  it "isn't valid without an email address" do
    user.email = nil
    expect(user).to_not be_valid
  end

  it "isn't valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end

  it "isn't valid without a username" do
    user.username = nil
    expect(user).to_not be_valid
  end
end
