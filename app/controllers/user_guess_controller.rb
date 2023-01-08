class UserGuessController < ApplicationController
  def new
  end

  def create
    date = Date.parse("#{guess_params[:date]}-01-01")
    @user_guess = UserGuess.new(date: date)
    respond_to do |format|
      if @user_guess.save
        format.html { redirect_to root_path }
        format.json { render :create, status: :created }
      else
        format.html { render :new }
        format.json
      end
    end
  end

  private

  def guess_params
    params.require(:user_guess).permit(:date)
  end
end
