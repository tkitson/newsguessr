class Newspaper < ApplicationRecord
  has_many_attached :photos

  def self.new_images
    all_newspapers = Newspaper.all
    filtered_newspapers = all_newspapers.select { |newspaper| newspaper.done == false }
    @todays_paper = filtered_newspapers.first
    @todays_paper.done = true
    @todays_paper.save
    return @todays_paper.id
  end
end
