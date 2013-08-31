require 'spec_helper'

feature 'Move Maker' do
  let(:user) { FactoryGirl.create(:user) }
  
  before :each do
    visit root_path
    login(user)
  end

  it "allows a user to make moves" do
    visit new_move_path
    select "At Will", from: "Frequency"
    fill_in "Title", with: "Magic Missile"
    fill_in "Description", with: "A wizard's best friend"
    select "Wizard", from: "Class"
    select "1", from: "Number of Dice"
    select "d2", from: "Type of Die"
    fill_in "Range (# of squares)", with: "20"

    click_on "Create Move"
    expect(page).to have_content "Magic Missile"
    expect(page).to have_content "Wizard" 
  end
end
