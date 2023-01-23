@todays_paper = Newspaper.find(Rails.cache.read("new_images"))
@answer = Answer.last
if @user_guess.persisted?
  if @user_guess.date.year == @todays_paper.date.year
    json.result "correct"
  elsif @user_guess.date.year > @todays_paper.date.year
    json.result "too late!"
  elsif @user_guess.date.year < @todays_paper.date.year
    json.result "too early!"
  end
end
