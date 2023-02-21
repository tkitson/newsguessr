require "test_helper"

class UserGuessControllerTest < ActionDispatch::IntegrationTest
  test "should create user guess with valid date" do
    user_guess = UserGuess.new(date: Date.today)
    assert user_guess.save
  end
end
