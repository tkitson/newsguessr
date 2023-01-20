class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
    @new_images = new_images
  end

  # private

  # def new_images
  #   ImageupdaterJob.perform_now
  # end
end
