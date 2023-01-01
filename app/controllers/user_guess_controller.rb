class UserGuessController < ApplicationController
  def new
  end

  def create
    @guess = UserGuess.create(guess_params)
    @answer = Answer.last
      # if @guess.date == @answer.date
      #   result = 'correct'
      # else
      #   result = 'incorrect'
      # end
      # respond_to do |format|
      #   if @post.save
      #     format.html { redirect_to @post, notice: 'Post was successfully created.' }
      #     format.json { render :show, status: :created, location: @post }
      #   else
      #     format.html { render :new }
      #     format.json { render json: @post.errors, status: :unprocessable_entity }
      #   end
      # end
    # render json: { result: result }
  end

  private

  def guess_params
    params.require(:user_guess).permit(:date)
  end
end
