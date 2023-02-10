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
