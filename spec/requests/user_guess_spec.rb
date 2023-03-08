require 'rails_helper'

RSpec.describe "UserGuesses", type: :request do
  describe "POST /user_guess" do
    context "with valid date" do
      it "creates a new user guess" do
        expect {
          post "/user_guess", params: { user_guess: { date: "1925" } }
        }.to change(UserGuess, :count).by(1)

        expect(response).to redirect_to(root_path)
      end
    end
  end
end
