# namespace :newspaper do
#   desc "TODO"
#   task new_images: :environment do
#     all_newspapers = Newspaper.all
#     filtered_newspapers = all_newspapers.select { |newspaper| newspaper.done == false }
#     @todays_paper = filtered_newspapers.first
#     @todays_paper.done = true
#     @todays_paper.save
#     Rails.cache.write('new_images', @todays_paper.id)
#     p "images updated"
#   end
# end

namespace :newspaper do
  desc "TODO"
  task new_images: :environment do
    current_newspaper = Newspaper.find_by(live: true)
    next_newspaper = Newspaper.find_by(done: false)
    current_newspaper.update(live: false)
    next_newspaper.update(live: true)
    next_newspaper.update(done: true)
    p "images updated"
  end
end
