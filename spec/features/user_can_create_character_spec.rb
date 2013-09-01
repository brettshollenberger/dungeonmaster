require 'spec_helper'

feature 'Character Creation' do
  let(:user) { FactoryGirl.create(:user) }
  
  before :each do
    @character_class = FactoryGirl.create(:character_class)
    visit root_path
    login(user)
  end

  it "allows a user to make a character" do
    visit new_character_path
    fill_in "First Name", with: "Aldo"
    fill_in "Last Name", with: "Leopold"
    select "Wizard", from: "Class"
    fill_in "Height", with: "5"
    fill_in "Weight", with: "150"
    click_on "Create Character"
    expect(page).to have_content "Aldo Leopold"
    expect(page).to have_content "Elf" 
  end
end
