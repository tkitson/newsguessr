namespace :newspaper do
  desc "TODO"
  task new_images: :environment do
    all_newspapers = Newspaper.all
    filtered_newspapers = all_newspapers.select { |newspaper| newspaper.done == false }
    @todays_paper = filtered_newspapers.first
    @todays_paper.done = true
    @todays_paper.save
    Rails.cache.write('new_images', @todays_paper.id)
    p "images updated"
  end
end
