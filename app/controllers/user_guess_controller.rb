class UserGuessController < ApplicationController
  def new
  end

  def create
    @guess = UserGuess.create(guess_params)
    @answer = Answer.last
      if @guess.date == @answer.date
        result = 'correct'
      else
        result = 'incorrect'
      end

      render json: { result: result }
  end

  private

  def guess_params
    params.require(:user_guess).permit(:date)
  end
end
