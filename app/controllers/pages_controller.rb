class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
    @todays_paper = refresh_images
  end

  def refresh_images
    id = Rails.cache.fetch('new_images', expires_in: 45.seconds) do
      Newspaper.new_images
    end
    Newspaper.where(id: id).first
  end
end
