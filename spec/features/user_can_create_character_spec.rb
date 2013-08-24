require 'spec_helper'

feature 'Character Creation' do
  let(:user) { FactoryGirl.create(:user) }
  
  before :each do
    visit root_path
    login(user)
  end

  it "allows a user to make a character" do
    visit new_character_path
    fill_in "First Name", with: "Aldo"
    fill_in "Last Name", with: "Leopold"
    select "Elf", from: "Class"
    click_on "Create Character"
    expect(page).to have_content "Aldo Leopold"
    expect(page).to have_content "Elf" 
  end
end
