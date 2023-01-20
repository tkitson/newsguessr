# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

folders = Dir.glob("app/assets/images/papers/*")

folders.each do |folder|
  name = folder.match(/\d{4}/).to_s
  newspaper = Newspaper.new
  newspaper.date = "01-01-#{name}"
  photos = Dir.glob("#{folder}/*")
  photos.each do |photo|
    file = File.open(photo)
    newspaper.photos.attach(io: file, filename: photo, content_type: "image/jpg")
  end
  newspaper.save
end
