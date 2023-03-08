require 'rails_helper'
require 'pry'

RSpec.describe "Home page", type: :system do

  it "displays a form to make a new guess" do
    visit root_path
    expect(page).to have_css("form#new_user_guess")
  end

  it "displays images" do
    page.all('#front-page-img').each do |img|
      visit img[:src]
      page.status_code.should be 200
    end
  end

  it "Tells the user when the answer is incorrect and too early" do
    visit root_path
    fill_in 'user_guess[date]', with: '1866'
    click_button 'commit'
    expect(page).to have_content("Incorrect - too early!")
  end

  it "Tells the user when the answer is incorrect and too late" do
    visit root_path
    fill_in 'user_guess[date]', with: '1966'
    click_button 'commit'
    expect(page).to have_content("Incorrect - too late!")
  end

  it "Tells the user when the answer is correct" do
    visit root_path
    fill_in 'user_guess[date]', with: '1912'
    click_button 'commit'
    expect(page).to have_content("Correct")
  end
end
