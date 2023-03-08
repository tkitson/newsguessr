namespace :newspaper do
  desc "TODO"
  task new_images: :environment do
    if Newspaper.find_by(done: false) == nil
      Newspaper.update_all(done: false)
      Newspaper.first.update(live: true, done: true)
      puts "started again"
    else
    current_newspaper = Newspaper.find_by(live: true)
    next_newspaper = Newspaper.find_by(done: false)
    current_newspaper.update(live: false)
    next_newspaper.update(live: true)
    next_newspaper.update(done: true)
    puts "images updated"
    end
  end
end
