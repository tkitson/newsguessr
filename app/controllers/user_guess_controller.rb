class UserGuessController < ApplicationController
  def new
  end

  def create
    @guess = UserGuess.create(guess_params)
    @answer = Answer.last
      if @guess.date == @answer.date
        redirect_to correct_path
      end
  end

  private

  def guess_params
    params.require(:user_guess).permit(:date)
  end
end
