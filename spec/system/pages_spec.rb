require 'rails_helper'

RSpec.describe "Home page", type: :system do
  it "loads successfully" do
    visit root_path
    expect(page).to have_http_status(:ok)
  end

  it "displays a form to make a new guess" do
    visit root_path
    expect(page).to have_css("form#new_user_guess")
  end

  it "displays today's paper" do
    live_paper = create(:newspaper, live: true)
    visit root_path
    expect(page).to have_css("img[src*='#{live_paper.image_url}']")
  end
end
