class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
    @todays_paper = Newspaper.find_by(live: true)
  end
end
