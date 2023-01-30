class PagesController < ApplicationController
  def home
    @user_guess = UserGuess.new
    @todays_paper = Newspaper.find_by(live: true)
  end

  # private

  # def refresh_images
  #   id = Rails.cache.read('new_images')
  #   Newspaper.where(id: id).first
  # end

  # def refresh_images
  #   id = Rails.cache.fetch('new_images', expires_in: 8.hours) do
  #     Newspaper.new_images
  #   end
  #   Newspaper.where(id: id).first
  # end
end
