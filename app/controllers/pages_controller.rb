class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
  end

  # def new_guess
  #   @answer = Answer.last
  #   @guess = UserGuess.last
  #   if @answer.date == @guess.date
  #     redirect_to correct_path
  #   else
  #     redirect_to root_path
  #   end
  # end
end
