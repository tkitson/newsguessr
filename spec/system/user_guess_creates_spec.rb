# require 'rails_helper'

# RSpec.describe "UserGuessCreates", type: :system do
#   before do
#     driven_by(:rack_test)
#   end

#   describe "Creating a user guess" do
#     it "creates a user guess with valid parameters" do
#       visit "/"
#       fill_in "user_guess[date]", with: "2022"
#       click_button "Submit"
#       expect(page).to have_content("Your guess has been saved!")
#       expect(UserGuess.last.date).to eq(Date.parse("2022-01-01"))
#     end
# end
