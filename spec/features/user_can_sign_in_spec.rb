require 'spec_helper'

feature "Signing in" do
  let(:user) { FactoryGirl.create(:user) }
  it "signs in valid users" do
    visit root_path
    expect(page).to_not have_content("Create Character")
    login(user)
    expect(page).to have_content("Create Character")
  end
end
