class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
  end
end
