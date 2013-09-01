require 'spec_helper'

feature 'Character Creation' do
  let(:user) { FactoryGirl.create(:user) }
  
  before :each do
    @character_class = FactoryGirl.create(:character_class)
    visit root_path
    login(user)
    visit new_character_path
  end

  def create_character
    fill_in "First Name", with: "Aldo"
    fill_in "Last Name", with: "Leopold"
    select "Wizard", from: "Class"
    fill_in "Height", with: "5"
    fill_in "Weight", with: "150"
  end

  it "allows a user to make a character" do
    create_character
    click_on "Create Character"
    expect(page).to have_content "Aldo Leopold"
    expect(page).to have_content "Wizard" 
  end

  it "adds moves" do
    create_character
    select "Magic Missile", from: "Moves"
  end
end
