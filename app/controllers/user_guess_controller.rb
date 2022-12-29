class UserGuessController < ApplicationController
  def new
  end

  def create
    raise
    @guess = UserGuess.new(guess_params)
  end

  def show
  end

  # def guess_params
  #   params.require(:service).permit(:date)
  # end
end
