class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
    @todays_paper = new_images
  end

  def new_images
    id = Rails.cache.fetch("new_images", expires_in: 30.seconds) do
      Newspaper.new_images # will only be called every 24 hours when the cache expires
    end
    Newspaper.where(id: id)
  end
end
